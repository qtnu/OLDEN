import router from '@ohos.router'
@Entry
@Component
struct message {
  @Builder messages(picture: ResourceStr, name: string, context: string) {
    Column() {
      Image(picture)
      Row() {
        Text(name)
        Text(context)
      }
    }
  }
  controller: WebController = new WebController();

  build() {
    Column() {
      Row() {
        Text('我的消息') {
        }
        .height(60)
        .fontSize(35)
      }
      .justifyContent(FlexAlign.Center)
      .height('7.5%')
      .width('100%')
      .borderRadius({ bottomLeft: "50px", bottomRight: "50px" })
      .alignItems(VerticalAlign.Top)
      .margin({ left: "1%", right: "1%" })
      .border({
        width: '3lpx',
        color: { bottom: Color.Black }, })

      Web({src:$rawfile('communication_new.html'),controller:this.controller})
    }
  }
}