// pages/product_detail/index.js
import { request } from "../../request/index.js";
Page({

  /**
   * 页面的初始数据
   */
  data: {
    productObj: {},
    isCollect: false
  },
  SwiperInfo: {},
  /**
   * 生命周期函数--监听页面加载
   */
  onShow: function () {
    let pages = getCurrentPages();
    let currentPage = pages[pages.length-1];
    let options = currentPage.options;
    console.log(options);
    const { pid } = options;
    this.getProductList(pid);

    
  },
  // 获取商品详情
  getProductList(pid) {
    request({url:"http://localhost:8087/api/queryProductsId",data: {pid}})
    .then(result=>{
      this.SwiperInfo = result.data.data
      let collect = wx.getStorageSync("collect") || [];
      let isCollect = collect.some(v => v.id === this.SwiperInfo.products.id);
      this.setData({
        productObj: result.data.data,
        isCollect
      })
    })
  },
  // 点击轮播图放大预览
  handlePrevewImage(e) {
    //  构造预览图片数组
    const urls = this.SwiperInfo.detailsSwiper.map(v=>v.detailsSrc);
    // 接收传递过来的图片url
    const current = e.currentTarget.dataset.url;
    wx.previewImage({
      current,
      urls,
    })
  },
  // 点击加入购物车事件
  handleCartAdd() {
    // 1.获取缓存中的购物车 数组
    let cart = wx.getStorageSync('cart')||[];
    // 2.判断商品对象是否已存在购物车数组中
    let index = cart.findIndex(v=>v.id===this.SwiperInfo.products.id);
    if (index === -1) {
      // 3.不存在第一次添加
      this.SwiperInfo.num = 1;
      this.SwiperInfo.checked = true;
      cart.push(this.SwiperInfo);
    } else {
      // 4.已存在购物车数组中 num++
      cart[index].num++;
    }
    // 5.把购物车重新添加回缓存中
    wx.setStorageSync('cart', cart);
    // 6.购物车加入成功提示
    wx.showToast({
      title: '加入成功',
      icon: 'success',
      mask: true
    })
  },
  // 点击商品收藏图标
  handleCollect() {
    let isCollect = false;
    let collect = wx.getStorageSync("collect")||[];
    let index = collect.findIndex(v => v.id === this.SwiperInfo.products.id);
    if (index !== -1) {
      collect.splice(index,1);
      isCollect = false;
      wx.showToast({
        title: '取消成功',
        icon: 'success',
        mask: true
      });
    } else {
      collect.push(this.SwiperInfo);
      isCollect = true;
      wx.showToast({
        title: '收藏成功',
        icon: 'success',
        mask: true
      });
    }
    wx.setStorageSync("collect", collect);
    this.setData({isCollect})
  }
})