import HomeIndex from '../view/HomeComponet';
import { NavList, TabId } from '../model/NavItemModel'

@Styles function allSize () {
  .width('100%')
  .height('100%')
}

@Entry
@Component
struct Index {
  @State currentPage: number = 0;
  private tabController: TabsController = new TabsController();

  @Builder TabBuilder(index: number) {
    Column() {
      Image(index == this.currentPage ? NavList[index].icon_selected : NavList[index].icon)
        .width(24)
        .height(24)
        .objectFit(ImageFit.Contain);
      Text(NavList[index].text)
        .fontSize(10)
        .fontWeight(10)
        .fontColor(this.currentPage === index ? '#007DFF' : '#999')

    }.justifyContent(FlexAlign.Center).allSize()
  }

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabController }) {
      TabContent() {
        HomeIndex()
      }
      .tabBar(this.TabBuilder(TabId.HOME))
      .align(Alignment.Start)

      TabContent() {

      }
      .tabBar(this.TabBuilder(TabId.ACHIEVEMENT))

      TabContent() {

      }
      .tabBar(this.TabBuilder(TabId.MINE))

    }
    .scrollable(false)
    .allSize()
    .barWidth('94%')
    .barMode(BarMode.Fixed)
    .vertical(false)
  }
}