// pages/user/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userinfo: {},
    collectNum: 0
  },
  onShow() {
    const userinfo = wx.getStorageSync("userinfo");
    const collect = wx.getStorageSync("collect")||[];
    this.setData({
      userinfo,
      collectNum: collect.length
    })
  },
  handleClickNum(e) {
    const username = e.currentTarget.dataset.name
    const type = e.currentTarget.dataset.type
    if (username !== undefined) {
      wx.navigateTo({
        url: '/pages/collect/index'
      })
    } else {
      wx.showToast({
        title: '请先登录',
        icon: 'none',
        duration: 1500,
        mask: false
      });
    }
  },
  // 订单点击跳转事件
  handleClick(e) {
    const username = e.currentTarget.dataset.name
    const type = e.currentTarget.dataset.type
    if (username !== undefined) {
      wx.navigateTo({
        url: '/pages/order/index?type=' + type
      })
    } else {
      wx.showToast({
        title: '请先登录',
        icon: 'none',
        duration: 1500,
        mask: false
      });
    }
  }

})