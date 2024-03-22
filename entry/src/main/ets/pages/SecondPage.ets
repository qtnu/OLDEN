import router from '@ohos.router';
import http from '@ohos.net.http';

@Entry
@Component
struct SecondPage {
  @State message: string = 'test'
  @State src: string = ''
  private arr: string[] = new Array(9).fill('').map((_, index) => `item ${index}`);

  onPageShow(){

  this.src = router.getParams()?.['msg'] || '';
}

  build() {

    Column() {
      Text(this.src + this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)

      Button('back')
        .onClick(() => {
          router.back();
        }).margin({bottom:10})
      Grid() {
        ForEach(this.arr, (item: string) => {
          GridItem() {
            Text(item)
              .fontSize(16)
              .fontColor(Color.White)
              .backgroundColor(0x007DFF)
              .width('100%')
              .height("auto")
              .textAlign(TextAlign.Center)

          }
        }, item => item)
      }
      .columnsTemplate('1fr 1fr 1fr')
      .columnsGap(10)
      .rowsGap(10)
      .height("100%")
    }
    .width('100%')
    .padding(12)
    .backgroundColor(0xF1F3F5)
  }



}