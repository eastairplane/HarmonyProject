import { ErrorEvent, MessageEvents, ThreadWorkerGlobalScope, worker } from '@kit.ArkTS';
import { MqttMessage, MqttResponse } from '@ohos/mqtt';
import { MQTT } from '../util/MQTT';
import { promptAction } from '@kit.ArkUI';

// @kit.ArkTS 提供了工作线程相关的功能。
// @ohos/mqtt 提供了 MQTT 消息和响应的类型。
// ../util/MQTT 导入了自定义的 MQTT 类。
// @kit.ArkUI 提供了用户界面相关的功能

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;
//workerPort 是工作线程与主线程通信的端口

/**
 * Defines the event handler to be called when the worker thread receives a message sent by the host thread.
 * The event handler is executed in the worker thread.
 *
 * @param e message data
 */
workerPort.onmessage = (e: MessageEvents) => {
  if (e.data == "close"){
    mqtt.destroy()
    workerPort.close()
  } else
  mqtt.pushMessage("testtopic/test",JSON.stringify(e.data))
}
/*
当工作线程接收到主线程发送的消息时执行。
如果消息内容为 "close"，则销毁 MQTT 连接并关闭工作线程。
否则，将消息内容作为 MQTT 消息发送到指定的主题 
*/

/**
 * Defines the event handler to be called when the worker receives a message that cannot be deserialized.
 * The event handler is executed in the worker thread.
 *
 * @param e message data
 */
workerPort.onmessageerror = (e: MessageEvents) => {
}

/**
 * Defines the event handler to be called when an exception occurs during worker execution.
 * The event handler is executed in the worker thread.
 *
 * @param e error message
 */
workerPort.onerror = (e: ErrorEvent) => {
}


console.log("开始连接mqtt")
let mqtt = new MQTT()
connectMqtt()
let count = 0
async function connectMqtt() {
  try {
    let connectResponse = await mqtt.connect("admin","1234!@#$")
    if (connectResponse.code != 0){ // 连接失败
      promptAction.showToast({message:"mqtt服务器连接失败，请检查网络"})
      return
    }
  } catch (err) {
    if(count == 3){
      count = 0
      promptAction.showToast({message:"connect:"+err.message})
      return
    } else {
      count++
      connectMqtt()
      return
    }
  }
  try {
    let subscribeResponse = await mqtt.subscribe("testtopic/#")
    if (subscribeResponse.code != 0){
      promptAction.showToast({message:"mqtt服务器订阅失败，请检查网络"})
      return
    }
  } catch (err) {
    if(count == 3){
      count = 0
      promptAction.showToast({message:"subscribe:"+err.message})
      return
    } else {
      count++
      connectMqtt()
      return
    }
  }
    while (true) {
      try {

        let message:MqttMessage = await mqtt.messageArrived()
        console.log("接收消息",JSON.stringify(message))
        workerPort.postMessage(message)
      } catch (err) {
        promptAction.showToast({message:"messageArrived:"+err.message})
      }
    }

}