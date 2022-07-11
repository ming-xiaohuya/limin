// pages/order/index.js
import { request } from "../../request/index.js";
Page({

  /**
   * 页面的初始数据
   */
  data: {
    orders: [],
    tabs: [
      {
        id: 0,
        value: "全部订单",
        isActive: true
      },
      {
        id: 1,
        value: "待付款",
        isActive: false
      },
      {
        id: 2,
        value: "待发货",
        isActive: false
      },
      {
        id: 3,
        value: "退款/退货",
        isActive: false
      }
    ]
  },
  onShow(options) {
    let pages =  getCurrentPages();
    let currentPage = pages[pages.length-1];
    const {type} = currentPage.options;
    this.changeTitleByindex(type-1);
    this.getOrders(type);
  },
  getOrders(type) {
    request({url:"http://localhost:8087/api/queryOrderType",data: {type}})
    .then(result=>{
      this.setData({
        orders: result.data.data.message
      })
    })
  },
  changeTitleByindex(index) {
    let {tabs} = this.data;
    tabs.forEach((v,i)=>i===index?v.isActive=true:v.isActive=false);
    this.setData({
      tabs
    })
  },
  // 标题点击事件 从子组件传递过来
  handleTabsItemChange(e) {
    const {index} = e.detail;
    this.changeTitleByindex(index);
    this.getOrders(index+1);
  }
})