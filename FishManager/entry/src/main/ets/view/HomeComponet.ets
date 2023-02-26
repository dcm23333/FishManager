import * as commonConst from '../common/contants/commonContants';


@Styles function allSize () {
  .width('100%')
  .height('100%')
}

@Extend(Text) function titleTextStyle () {
  .fontSize('16')
  .fontWeight('500')
  .width('1000%')
  .fontColor($r(`app.element.color.titleColor`))
  .padding({
    top: '1.5%',
    bottom: '1.5%',
    left: '3.3%'
  })
}

@Component
export default struct HomeIndex{

  build() {
    Scroll() {
      Column() {
        Text('首页').fontSize(30).fontColor(Color.Blue).margin({ left: 24, top: 24 })

        Row(){
          Column(){
            Image('../../resources/rawfile/mainPg/fish.png')
            Text('1').fontSize(20)
          }
        }.backgroundColor(Color.Grey)
        .width('90%')
        .height('100')
        .margin({top: '280', left: '5%'})

      }.backgroundImage($rawfile('background/MainBackground.jpg'))
      .alignItems(HorizontalAlign.Start)
      .allSize()
    }
  }
}