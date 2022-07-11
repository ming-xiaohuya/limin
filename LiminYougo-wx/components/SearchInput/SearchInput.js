// components/SearchInput/SearchInput.js
Component({
  /**
   * 组件的初始数据
   */
  data: {
    searchList: [
      "手机",
      "精品女装",
      "小米晾衣架",
      "美白精华"
    ],
    // 状态栏高度
    statusBarHeight: wx.getStorageSync('statusBarHeight') + 'px',
    // 导航栏高度
    navigationBarHeight: wx.getStorageSync('navigationBarHeight') + 'px',
    // 胶囊按钮高度
    menuButtonHeight: wx.getStorageSync('menuButtonHeight') + 'px',
    // 导航栏和状态栏高度
    navigationBarAndStatusBarHeight:
      wx.getStorageSync('statusBarHeight') +
      wx.getStorageSync('navigationBarHeight') +
      'px'
  }
})
