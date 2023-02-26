export interface NavItem {
  icon: Resource;
  icon_selected: Resource;
  text: Resource;
  id: number;
}

// tabId
export enum TabId {
  HOME,
  ACHIEVEMENT,
  MINE
}

export const NavList: NavItem[] = [
  {
    icon: $rawfile('tabs/home_normal.png'),
    icon_selected: $rawfile('tabs/home_sel.png'),
    text: $r('app.string.tab_home'),
    id: TabId.HOME
  },
  {
    icon: $rawfile('tabs/add_normal.png'),
    icon_selected: $rawfile('tabs/home_sel.png'),
    text: $r('app.string.tab_add'),
    id: TabId.ACHIEVEMENT
  },
  {
    icon: $rawfile('tabs/mine_normal.png'),
    icon_selected: $rawfile('tabs/mine_sel.png'),
    text: $r('app.string.tab_mine'),
    id: TabId.MINE
  },
]