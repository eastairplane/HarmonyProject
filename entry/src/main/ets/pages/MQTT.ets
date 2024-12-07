import mqtt from '@ohos.mqtt';

export function connectMQTT() {
    const client = mqtt.connect('mqtt://broker.hivemq.com:1883');

    client.on('connect', () => {
        console.log('Connected to MQTT broker');
        client.subscribe('test/topic', (err) => {
            if (!err) {
                console.log('Subscribed to topic');
            } else {
                console.error('Subscription error:', err);
            }
        });
    });

    client.on('message', (topic, message) => {
        console.log(`Received message: ${message.toString()} on topic: ${topic}`);
    });

    client.on('error', (err) => {
        console.error('MQTT error:', err);
    });

    client.on('close', () => {
        console.log('MQTT connection closed');
    });
}