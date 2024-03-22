import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component
struct search {
  @State searchstring:string = ''
  build(){
    Column(){
      Row() {
        TextInput({placeholder:'搜索                                               '})
          .type(InputType.Normal)
          .backgroundColor(0xFFF0F2F5)
          .width('82%')
          .margin({left:8,top:10})
          .onChange((value : string )=>{
            this.searchstring = value
          })

        Button({ type: (ButtonType.Circle) }) {
          Image($r('app.media.fanbgdajing')).size({ width: 40, height: 40 })
            .width("50%")
            .height("50%")
        }
        .borderRadius({ bottomRight: "50px" })
        .backgroundColor(0xFFFFFF)
        .width("15%")
        .height("100%")
        .onClick(() => {
          promptAction.showToast({
            message:"Internet Error",
            duration:2000
          })
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
      Row(){
        Text('laodenghaosi')
      }
      .height('92.5%')
      }
    }
  }
