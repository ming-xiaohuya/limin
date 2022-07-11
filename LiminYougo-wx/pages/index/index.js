// index.js
import { request } from "../../request/index.js";
Page({
  data: {
    current: 0,  //当前所在页面的 index
    indeicatorDots: true,   // 是否显示面板指示点
    autoplay: true,   // 是否自动轮播
    interval: 3000,   // 自动切换时间间隔
    duration: 800,    // 滑动动漫时长
    circular: true,   // 是否采用衔接切换
    indicatorColor: 'white',    //指示点颜色
    activeColor: 'coral',   //当前选中的指示点颜色
    swiperCurrent: 0,
    swiperList: [],
    navList: [],
    spikeList: [],
    productList: [],
    link: [
      '/pages/second/register',
      '/pages/second/register',
      '/pages/second/register',
      '/pages/second/register'
    ]
  },
  QueryParams: {
    pagenum: 1,
    pagesize: 10
  },
  totalPages: 1,
  onLoad:function (options) {
    this.getSwiperList();
    this.getNavList();
    this.getSpikeList();
    this.getProductList();
  },
  // 获取轮播图
  getSwiperList() {
    request({url:"http://localhost:8087/swiper/querySwiper"})
    .then(result=>{
      this.setData({
        swiperList: result.data.data
      })
    })
  },
  // 获取导航
  getNavList() {
    request({url:"http://localhost:8087/nav/queryNav"})
    .then(result=>{
      this.setData({
        navList: result.data.data
      })
    })
  },
  // 获取秒杀商品
  getSpikeList() {
    request({url:"http://localhost:8087/api/querySpikeList"})
    .then(result=>{
      this.setData({
        spikeList: result.data.data
      })
    })
  },
  // 获取楼层
  getProductList() {
    request({url:"http://localhost:8087/api/queryProducts",data: this.QueryParams})
    .then(result=>{
      // 获取接口返回的数据总条数
      const total = result.data.data.total;
      // 计算页面总数
      this.totalPages = Math.ceil(total / this.QueryParams.pagesize);
      this.setData({
        // 拼接数据
        productList: [...this.data.productList,...result.data.data.message]
      })

      // 关闭下拉刷新窗口
      wx.stopPullDownRefresh();
    })
  },
  // 滚动条触底事件
  onReachBottom() {
    if (this.QueryParams.pagenum >= this.totalPages) {
      wx.showToast({ title: '没有更多数据了' })
    } else {
      this.QueryParams.pagenum++;
      this.getProductList();
    }
  },
  //轮播图的切换事件
  swiperChange: function(e) {
    this.setData({
      swiperCurrent: e.detail.current
    })
  }
});
  
