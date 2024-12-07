import { MQTT } from './MQTT';
const connectMQTT=new (MQTT)
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  onInit() {
    connectMQTT.connect('admin','12341234');
  }

  build() {
    RelativeContainer() {
      Text(this.message)
      Button('Send Message')
        .onClick(() => {
          this.message = 'Message Sent';
          connectMQTT.subscribe('testtopic', 1);

        })
    }
    .height('100%')
    .width('100%')
  }
}