import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

import  axios  from '@ohos/axios'

@Entry
@Component
struct SignUpPage {
  @State message: string = '注册'
  @State password:String = ''
  @State password_:String = ''
  @State userId:String = ''

  build()  {
      Column() {

        Row(){

          Column(){

            Row(){
              Column(){
                Row(){
                  Image($r("app.media.logo"))
                    .objectFit(ImageFit.Contain)
                    .height("100%")
                    .width("100%")

                }.height("25%").width("40%")
                .border({ width: '3lpx', color:  0xFFF0F2F5  })
                .alignItems(VerticalAlign.Center)
                .justifyContent(FlexAlign.Center)
                .margin({bottom:"5%"})
                .borderRadius("24vp")

                Row(){
                  Text(this.message)
                    .fontWeight(FontWeight.Bold)
                    .fontColor(Color.Black)
                    .fontStyle(FontStyle.Italic)
                    .fontFamily('Arial')
                }.margin({bottom:"5%"})

                TextInput({placeholder:"手机/邮箱"})
                  .type(InputType.PhoneNumber||InputType.Email)
                  .onChange((value:String)=>{
                    this.userId = value
                  })
                TextInput({ placeholder: "密码框Test" })
                  .type(InputType.Password)
                  .onChange((value: string) => {
                    this.password = value
                  }).margin({top:"10%",bottom:"10%"})
                TextInput({ placeholder: "确认密码框Test" })
                  .type(InputType.Password)
                  .onChange((value: string) => {
                    this.password_ = value
                  }).margin({bottom:"10%"})
                Button("注册").onClick(()=>{
                  if((this.password==this.password_)
                      &&this.password_!=null
                      &&this.password!=null){
                    router.pushUrl({
                      url: 'pages/vigation',
                      params: {
                        msg: this.userId
                      }
                    }, router.RouterMode.Standard)
                  }else{
                    promptAction.showToast({
                      message:"Internet Error",
                      duration:2000
                    })
                  }
                })
              }

            }.border({ width: '3lpx', color:  0xFFF0F2F5  })
            .padding("5%")
            .alignItems(VerticalAlign.Center)
            .margin({top:"10%",bottom:"10%"})
            .borderRadius("24vp")
            .height("70%")

            Row(){
              Button({ type: (ButtonType.Circle) }){
                Image($r("app.media.ic_public_back"))
                  .objectFit(ImageFit.Contain)
                  .height("50%")
                  .width("50%")
              }.onClick(() => {router.back()})
              .width("100%")
              .height("100%")
              .backgroundColor(0xFFF0F2F5)
            }//.border({ width: '3lpx', color:  Color.Green  })
            .width("20%")
            .height("10%")

            Row(){
              Text("Design by HarmonyOS")
                .fontSize(15)
            }
            //.border({ width: '3lpx', color:  Color.Green  })
            .margin({top:"20%"})
          }



        }.width("80%").height('80%')
        //.border({ width: '3lpx', color:  Color.Green  })
        .padding("5%")
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Top)
        .borderRadius("24vp")
        .backgroundColor(Color.White)

      }
      //.border({ width: '3lpx', color:  Color.Green  })
      .width('100%')
      .height("100%")
      .justifyContent(FlexAlign.Center)
      .backgroundColor(0xFFDEC685)
    }
}