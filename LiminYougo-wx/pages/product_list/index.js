// pages/product_list/index.js
import { request } from "../../request/index.js";
Page({

  /**
   * 页面的初始数据
   */
  data: {
    tabs: [
      {
        id: 0,
        value: "综合",
        isActive: true
      },
      {
        id: 1,
        value: "销量",
        isActive: false
      },
      {
        id: 2,
        value: "价格",
        isActive: false
      }
    ],
    productList: []
  },
  QueryParams: {
    cid: "",
    pagenum: 1,
    pagesize: 10
  },
  totalPages: 1,
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.QueryParams.cid = options.cid;
    this.getProductList();
  },

  // 标题点击事件 从子组件传递过来
  handleTabsItemChange(e) {
    const {index} = e.detail;
    let {tabs} = this.data;
    tabs.forEach((v,i)=>i===index?v.isActive=true:v.isActive=false);
    this.setData({
      tabs
    })
  },
  getProductList() {
    request({url:"http://localhost:8087/api/queryProductsById",data: this.QueryParams})
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
  // 下拉刷新事件
  onPullDownRefresh () {
    this.setData({
      productList: []
    })
    this.QueryParams.pagenum = 1;
    this.getProductList();
  }
})