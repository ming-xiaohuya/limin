// pages/pay/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    address: {},
    cart: [],
    allChecked: false,
    totalPrice: 0,
    totalNum: 0
  },
  onShow() {
    // 获取缓存中收货地址信息
    const address = wx.getStorageSync('address');
    let cart = wx.getStorageSync('cart')||[];

    // 商品全选
    cart = cart.filter(v => v.checked);
    this.setData({
      address
    })
    let allChecked = true;
    let totalPrice = 0;
    let totalNum = 0;
    cart.forEach(v => {
      totalPrice += v.num*v.products.price;
      totalNum += v.num;
    })

    this.setData({
      cart,
      allChecked,
      totalPrice,
      totalNum
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },

  // 设置购物车状态
  setCart(cart) {
    
    let allChecked = true;
    let totalPrice = 0;
    let totalNum = 0;
    cart.forEach(v => {
      if (v.checked) {
        totalPrice += v.num*v.products.price;
        totalNum += v.num;
      } else {
        allChecked = false;
      }
    })

    // 判断数组是否为空
    allChecked=cart.length!=0?allChecked:false;
    this.setData({
      cart,
      allChecked,
      totalPrice,
      totalNum
    })
    wx.setStorageSync("cart", cart);
  }
})