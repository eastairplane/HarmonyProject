import { MqttAsync, MqttClient, MqttMessage, MqttQos, MqttResponse } from '@ohos/mqtt'

class MqttInstance {
  private static instance: MqttClient;

  public static getInstance(url: string):MqttClient {
    if (!MqttInstance.instance) {
      MqttInstance.instance = MqttAsync.createMqtt({
        url,
        clientId: 'mqtt-1',
        persistenceType: 1
      })
    }
    return MqttInstance.instance;
  }
}

const MqttService = () => MqttInstance.getInstance("mqtt://139.9.223.17:1883")

export class MQTT {
  public connect(userName: string, password: string):Promise<MqttResponse> {
    const ms = MqttService();
    return ms.connect({
      userName,
      password,
      connectTimeout: 30,
      MQTTVersion: 0
    })
  }

  public subscribe(topic: string, qos: MqttQos = 0):Promise<MqttResponse> {
    const ms = MqttService();
    return ms.subscribe({ topic, qos })
  }

  public async messageArrived():Promise<MqttMessage> {
    const ms = MqttService();
    return new Promise<MqttMessage>((resolve, reject) => {
      ms.messageArrived((err, data: MqttMessage) => {
        data ? resolve(data) : reject(err)
      })
    });
  }

  public pushMessage(topic: string, payload: string, qos: MqttQos = 0):Promise<MqttResponse> {
    const ms = MqttService();
    return ms.publish({ topic, payload, qos });
  }

  public async destroy():Promise<boolean> {
    const ms = MqttService();
    return ms.destroy();
  }
}
