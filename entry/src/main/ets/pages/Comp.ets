@Preview
@Component
export default struct Comp {
  @Builder healthyCard(image:Resource,){
    Grid(){
      GridItem(){
          Image(image).size({height:"",width:""})
      }.border({
        width: '3lpx',
        color: { top: Color.Gray }, })
    }
  }
  build() {
      Grid(){
        this.healthyCard($r("app.media.logo"))
      }
  }
}