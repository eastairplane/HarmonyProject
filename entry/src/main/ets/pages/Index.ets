
@Entry
@Component
struct Homework {
  @Builder
  build() {
    Row() {
      Column() {
        Tabs() {
          TabContent() {
            Column(){
              Text('智能驾驶控制中心').fontSize(24)
              //第一行
              Row(){
                //车辆实时数据
                Column(){
                  Text('车辆实时数据').fontSize(20)
                  Image($r('app.media.a'))
                    .width(200)
                    .height(200)
                }.border({width:1})
                .width("33%")
                .height("100%")
                .padding(10)
                .margin('1%')
                //电池状态
                Column(){
                  Text('电池状态').fontSize(20)
                  Image($r('app.media.b'))
                    .width(200)
                    .height(200)
                }
                .border({width:1})
                .margin('1%')
                .width("33%")
                .height("100%")
                .padding(10)
                //系统警报
                Column(){
                  Text('系统警报')
                    .fontSize(20)
                    .padding(10)
                    .textAlign(TextAlign.Center)
                  Column(){
                    Text('动力系统                     正常')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.Start)
                  }
                  .border({width:1})
                  Column(){
                    Text('制动系统                     正常')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.Center)
                  }
                  .border({width:1})
                  .margin(4)
                  Column(){
                    Text('胎压检测                     警报')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.Center)
                  }
                  .border({width:1})
                  .margin(4)
                }
                .border({width:1})
                .margin('1%')
                .width("33%")
                .height("100%")
              }
              .height('50%')
              .margin('1%')
              .padding(20)
              .backgroundColor(0xf2f3f5)
              .width(1000)
              //第二行
              Row(){
                Column(){
                  Text('行驶路线').fontSize(20)
                  Image($r('app.media.d'))
                    .width('99%')
                    .height(160)
                }.border({width:1})
                .margin('1%')
                .width("68%")
                .height("100%")
                .padding(10)
                Column(){
                  Text('环境检测').fontSize(20)
                    .fontSize(20)
                    .padding(10)
                    .textAlign(TextAlign.End)
                  Column(){
                    Text('车外问额度                   24度')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.Start)

                  }
                  .border({width:1})
                  Column(){
                    Text('空气质量                           优')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.End)
                  }
                  .border({width:1})
                  .margin(4)
                  Column(){
                    Text('道路状况                       良好')
                      .fontSize(15)
                      .padding(10)
                      .textAlign(TextAlign.End)
                  }
                  .border({width:1})
                  .margin(4)
                }.border({width:1})
                .margin('1%')
                .width("33%")
                .height("100%")
                .padding('1%')
              }
              .height('40%')
              .width('100%')
            }
            .padding('4%')
            .backgroundColor(0xf2f3f5)
          }
          .tabBar('车辆状态')

          TabContent() {
            Row() {
              Column() {
                // 第一列内容
                Text('智能驾驶仓导航系统').fontWeight(FontWeight.Bold).textAlign(TextAlign.Start)
                Image($r('app.media.navigator'))
                  .width('85%')
                  .height('85%')
                  .padding(10)
              }
              .width('70%')
              Column() {
                // 第二列内容，分为三张卡片
                Column() {
                  // 第一张卡片
                  Row() {
                    Flex({ direction: FlexDirection.Column }) {

                      Flex({ direction: FlexDirection.Row }) {
                        Text('导航信息').width('50%').textAlign(TextAlign.Start).fontWeight(FontWeight.Bold)
                      }
                      .width('100%').height('25%')

                      Flex({ direction: FlexDirection.Row }) {
                        Text('目的地').width('50%').textAlign(TextAlign.Start)
                        Text('科教园B区').width('50%').textAlign(TextAlign.End)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('预计到达').width('50%').textAlign(TextAlign.Start)
                        Text('15：30').width('50%').textAlign(TextAlign.End)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('剩余距离').width('50%').textAlign(TextAlign.Start)
                        Text('12.5公里').width('50%').textAlign(TextAlign.End)
                      }
                      .width('100%').height('25%')
                    }
                    .height('100%')
                    .width('100%')
                  }
                  .height('30%')
                  .width('100%')
                  .backgroundColor(0xEEEEEE)
                  .padding(5)
                  // 第二张卡片
                  Row() {
                    Flex({ direction: FlexDirection.Column }) {
                      Flex({ direction: FlexDirection.Row }) {
                        Text('路况信息').width('50%').textAlign(TextAlign.Start).fontWeight(FontWeight.Bold)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('当前路段').width('50%').textAlign(TextAlign.Start)
                        Text('畅通').width('50%').textAlign(TextAlign.End).fontColor(Color.Green)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('前方路况').width('50%').textAlign(TextAlign.Start)
                        Text('轻度拥挤').width('50%').textAlign(TextAlign.End).fontColor(Color.Yellow)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('平局车速').width('50%').textAlign(TextAlign.Start)
                        Text('25km/h').width('50%').textAlign(TextAlign.End)
                      }
                      .width('100%').height('25%')
                    }
                    .height('100%')
                    .width('100%')
                  }
                  .height('30%')
                  .width('100%')
                  .backgroundColor(0xEEEEEE)
                  .padding(5)
                  // 第三张卡片
                  Row() {
                    Flex({ direction: FlexDirection.Column }) {
                      Flex({ direction: FlexDirection.Row }) {
                        Text('导航建议').width('50%').textAlign(TextAlign.Start).fontWeight(FontWeight.Bold)
                      }
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('施工').width('50%').textAlign(TextAlign.Start)
                      }.backgroundColor(0xfdfbe8)
                      .width('100%').height('25%')
                      Flex({ direction: FlexDirection.Row }) {
                        Text('建议高速').width('50%').textAlign(TextAlign.Start)
                      }.backgroundColor(0xeef5ff)
                    }
                    .height('100%')
                    .width('100%')
                  }
                  .height('30%')
                  .width('100%')
                  .backgroundColor(0xEEEEEE)
                  .padding(5)
                }
                .width('100%')
                .height('100%')
              }
              .width('30%')
              .width('30%')
            }
            .padding(20)
            .backgroundColor(0xf2f3f5)
          }
          .tabBar('导航系统')
          TabContent() {
            // Text('智能座椅').fontSize(50
            Column() {
              Column(){
                Row()
                {
                  Text('信息娱乐控制中心').fontSize(24)
                }
                // 顶部信息
                Row() {
                  // 假设 logoPath 是你的 logo 路径，需要替换
                  Image('logoPath').width(50).height(50)
                  Text('智能座椅控制中心').fontSize(24).textAlign(TextAlign.Center)
                  Text('系统状态: 正常运行').fontSize(24)
                }
                // 中间的仪表盘部分
                Image($r('app.media.c'))
                  .width(1000)
                // 底部功能状态和环境监测
                Row() {
                  // 座椅功能状态
                  Column() {
                    Text('座椅功能状态').fontSize(24).padding(10)
                    Column() {
                      Text('加热系统:      ' + '正常', ).fontSize(24).padding(10)
                      Text('按摩系统:      ' + '正常', ).fontSize(24).padding(10)
                      Text('调节系统:      ' + '注意', ).fontSize(24).padding(10)
                    }
                  }
                  .border({ width: 1 }).margin(45).padding(10)
                  .width('30%')
                  .height('40%')
                  // 环境监测
                  Column() {
                    Text('环境监测').fontSize(24).margin(10)
                    Column() {
                      Text('座椅温度:               24°C').fontSize(24).textAlign(TextAlign.Start).margin(10)
                      Text('压力分布:               均匀').fontSize(24).textAlign(TextAlign.Start).margin(10)
                      Text('使用时长: 2小时30分钟').fontSize(24).textAlign(TextAlign.Start).margin(10)
                      Text('疲劳提醒:       建议休息', ).fontSize(24).textAlign(TextAlign.Start).margin(10)
                    }
                  }
                  .border({ width: 1 }).margin(45)
                  .width('30%')
                  .height('40%')
                }
              }
              .backgroundColor('#FFF1F3F5')
              .width('100%')
              .height('100%')
            }
          }
          .tabBar('安全系统')

          TabContent() {
            //Text('信息娱乐').fontSize(50)
            Column() {
              Text('信息娱乐管理中心').fontSize(24)
              Image($r('app.media.e'))
                .width(700)
                .height(400)
                .padding('1%')
            }.width('80%')
            .height('80%')
            .padding('2%')
          }
          .tabBar('信息娱乐')

          TabContent() {
            // Text('智能座椅').fontSize(50)
            Column() {
              //第一行
              Row() {
                Image($r('app.media.map_image'))
              }
              .height('40%')
              Text('刹车系统状态')
                .fontSize(20)
                .fontWeight(FontWeight.Bold);
              Row() {
                Column() {
                  Text('右前轮: 2.4 bar')
                    .fontSize(16);
                  Text('右后轮: 2.3 bar')
                    .fontSize(16);
                  Text('系统效能: 正常')
                    .fontSize(16);
                }
              }
              Text('胎压监测状态')
                .fontSize(20)
                .fontWeight(FontWeight.Bold);
              Text('左前轮: 2.4 bar')
                .fontSize(16);
              Text('左后轮: 2.3 bar')
                .fontSize(16);
              Text('安全气囊状态')
                .fontSize(20)
                .fontWeight(FontWeight.Bold);
              Text('前排气囊: 正常')
                .fontSize(16);
              Text('侧面气囊: 正常')
                .fontSize(16);
              Text('帘式气囊: 正常')
                .fontSize(16);
              Text('安全监测地图')
                .fontSize(20)
                .fontWeight(FontWeight.Bold);
              Text('269 ks')
                .fontSize(16);
              Text('环境安全指标')
                .fontSize(20)
                .fontWeight(FontWeight.Bold);
              Text('车距预警: 安全');
              Text('盲区监测: 正常');
              Text('行人识别: 活跃');
              Text('道路状况: 注意');
            }

          }
          .tabBar('智能座椅')
        }
        .vertical(true)
        .barWidth(100)
        .barHeight(200)
        .barPosition( BarPosition.Start)
      }
      .width('100%')
    }
    .height('100%')
  }
}