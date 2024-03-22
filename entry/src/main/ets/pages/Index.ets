import router from '@ohos.router'

@Entry
@Component
struct Index {
  //监控页面跳转标签实现高亮
  @State currentIndex: number = 0
  //自定义ui函数
  @Builder TabBuilder(title: string, image: ResourceStr, index: number, bor_left: number, bor_right: number, bor_top: number) {
    Column({ space: 0 }) {
      Image(image).size({ width: 35, height: 35 }).fillColor(this.currentIndex === index ? Color.Blue : Color.Gray)
      Text(title).fontColor(this.currentIndex === index ? Color.Blue : Color.Gray).fontSize(19)
    }
    .height(90)
    .width(90)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    /*.border({
      width: {left : bor_left ,right :bor_right,top :bor_top,bottom:0},
      color: { bottom: Color.Black }, })*/
  }

  build() {
    Column() {
      Row() {
        TextInput({placeholder:'搜索                                               🔍'})
        .type(InputType.Normal)
        .backgroundColor(0xFFF0F2F5)
        .width('82%')
        .margin({left:8,top:10})
        .onClick(()=>{
          router.pushUrl({ url: 'pages/search' })
        })

        Button({ type: (ButtonType.Circle) }) {
          Image($r('app.media.money')).size({ width: 40, height: 40 })
            .width("50%")
            .height("50%")
        }
        .borderRadius({ bottomRight: "50px" })
        .backgroundColor(0xFFFFFF)
        .width("15%")
        .height("100%")
        .onClick(() => {
          router.pushUrl({ url: 'pages/message' })
        })
      }
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.Start)
      .height('7.5%')
      .width('100%')
      .borderRadius({ bottomLeft: "45px", bottomRight: "45px" })
      .alignItems(VerticalAlign.Top)
      .margin({ left: "1%", right: "1%" })
      .border({
        width: '3lpx',
        color: { bottom: Color.Black }, })

      Row() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Text('first')
          }
          .tabBar(this.TabBuilder('运动健康', $r('app.media.home'), 0, 1, 0, 1))

          TabContent() {
            Text('second')
          }
          .tabBar(this.TabBuilder('老登裸聊', $r('app.media.money'), 1, 0, 0, 1))

          TabContent() {
            Text('first')
          }
          .tabBar(this.TabBuilder('老登金币', $r('app.media.money'), 2, 0, 0, 1))

          TabContent() {
            Text('first')
          }
          .tabBar(this.TabBuilder('我的主页', $r('app.media.home'), 3, 0, 1, 1))

        }
        .width('100%')
        .height('100%')
        .vertical(false)
        .onChange(index => this.currentIndex = index)
        .barHeight(80)
        .barMode(BarMode.Scrollable)
        .barWidth(360)
      }
      .height('92.5%')
    }
    .backgroundColor(0xFFF0F2F5)
    .height('100%')
    .width('100%')
  }
}