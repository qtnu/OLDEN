import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component

struct UserInfo {
  @State message: string = '--------Hello World--------'
  @State password: string = ""
  @State userId: String = ""
  onPageShow(){
   this.password=''
  }

  build() {
    Column() {
      //app图标
      Row() {
        Image($r("app.media.app_icon"))
          .width("100%")
          .height("100%")
        /*.border({
          width: '3lpx',
          color: { bottom: Color.Gray }, })*/
      }
      .height("40%")
      .width("100%")
      /*.border({
        width: '3lpx',
        color: { bottom: Color.Gray }, })*/
      .borderRadius("20px")
      .justifyContent(FlexAlign.Center)


      Row(){
        Column() {
          Row() {
            //App
            Text("OLDEN_HOUSE")
              .fontSize(40)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.Black)
              .fontStyle(FontStyle.Italic)
              .fontFamily('Arial')
              .width("auto")
            //.margin({top:"20%",bottom:"10%"})
          }
          /*.border({
            width: '3lpx',
            color: { bottom: Color.Black }, })*/
          .width("100%")
          .height("10%")
          .margin({ top: "10%" })
          .justifyContent(FlexAlign.Center)

          //登录模块
          Row() {
            Column() {
              TextInput({ placeholder: "账号Test" })
                .type(InputType.Normal)
                .onChange((value: string) => {
                  this.userId = value
                }).margin("3%")
                .height("25%")
              TextInput({ placeholder: "密码框Test" })
                .type(InputType.Password)
                .onChange((value: string) => {
                  this.password = value
                }).margin("3%")
                .height("25%")

              Button('登录')
                .onClick(() => {
                  router.pushUrl({
                    url: 'pages/Index',
                    params: {
                      msg: this.userId
                    }
                  }, router.RouterMode.Standard)
                })
                .type(ButtonType.Capsule)
                .margin({ top: "5%" })
                .width("20%")


            }.width("100%").height("100%").alignItems(HorizontalAlign.Center)
            //.border({ width: '3lpx', color: { bottom: Color.Green }, })
            .padding("5%")
          }
          //.alignItems(HorizontalAlign.Center)
          .height("35%")
          .width("100%")
          //.border({ width: '3lpx', color: { bottom: Color.Green }, })
          //.borderRadius("20px")
          .margin({ top: "5%" })


          //其他登陆方式
          Row() {
            Column() {
              Row() {
                Column() {
                  Text(this.message)
                }
              }

              Row() {
                Column() {
                  Button({ type: (ButtonType.Circle) }) {
                    Image($r("app.media.wv_icon"))
                      .objectFit(ImageFit.Contain)
                      .width("50%")
                      .height("50%")
                  }.backgroundColor(0x317aff)
                  .width("100%")
                  .height("100%")
                  .onClick(() => {
                    this.message = "WeChat"
                  })
                }.margin("5%")
                .width("10%")
                .height("30%")

                Column() {
                  Button({ type: (ButtonType.Circle) }) {
                    Image($r("app.media.qq_icon"))
                      .objectFit(ImageFit.Contain)
                      .width("50%")
                      .height("50%")
                  }.backgroundColor(0x317aff)
                  .width("100%")
                  .height("100%")
                  .onClick(() => {
                    this.message = "QQ"
                  })
                }.margin("5%")
                .width("10%")
                .height("30%")

                Column() {
                  Button({ type: (ButtonType.Circle) }) {
                    Image($r("app.media.icon"))
                      .objectFit(ImageFit.Contain)
                      .width("50%")
                      .height("50%")

                  }.backgroundColor(0x317aff)
                  .width("100%")
                  .height("100%")
                  .onClick(() => {
                    router.pushUrl({
                      url: 'pages/SignUpPage',
                    })
                  })
                }
                .onClick(() => {
                  this.message = "Sign UP"
                })
                .margin("5%")
                .width("10%")
                .height("30%")
              }
            }
            .width("100%")
            .borderRadius("24vp")

          }
          .border({
            width: '3lpx',
            color: { top: Color.Gray, left: Color.White, right: Color.White, bottom: Color.White },
          })
          //.borderRadius({ topLeft: "20vp", topRight: "20vp" })
          .alignItems(VerticalAlign.Bottom)
          .width("100%")
          .height("20%")
          .justifyContent(FlexAlign.Center)
          //.margin({ top: "%" })

        }
        .backgroundColor(Color.White)
        .border({
          width: '3lpx',
          color: { top: Color.Gray }, })
        .height("80%")
        .width("100%")
        .borderRadius({ topLeft: "70px", topRight: "70px" })
        //.alignItems(HorizontalAlign.Center)
        //.margin({top :"50%"})
        .shadow({ radius: 10, color: "DEC685" })
      }.backgroundColor(0xFFDEC685)


    }

  }
  pageTransition(){
    PageTransitionEnter({ duration: 500 })
      .slide(SlideEffect.Right)
    PageTransitionExit({ delay: 10 })
      .translate({ x: 100.0, y: 100.0 })
      .opacity(0)
  }
}
