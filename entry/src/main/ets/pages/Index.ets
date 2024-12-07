import { connectMQTT } from './MQTT';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  onInit() {
    connectMQTT();
  }

  build() {
    RelativeContainer() {
      Text(this.message)
      Button('Send Message')
        .onClick(() => {
          this.message = 'Message Sent';
          connectMQTT().publish('topic/test', 'Message Sent');
        })
    }
    .height('100%')
    .width('100%')
  }
}