// pages/search/search.js
import { request } from "../../request/index.js";
Page({

  /**
   * 页面的初始数据
   */
  data: {
    secarchList: [],
    isFocus: false,
    inpValue: ""
  },
  TimeId: -1,
  // 输入框 输入值就好触发
  handleInput(e) {
    const {value} = e.detail;
    if (!value.trim()) {
      this.setData({
        secarchList: [],
        isFocus: false
      })
      return;
    }
    this.setData({isFocus: true})
    // 防止抖动
    clearTimeout(this.TimeId);
    this.TimeId = setTimeout(() => {
      this.qsearch(value);
    }, 1000);
    
  },
  // 搜索请求
  qsearch(query) {
    request({url:"http://localhost:8087/api/query",data: {query}})
    .then(result=>{
      this.setData({
        secarchList: result.data.data.message
      })
    })
  },
  handleCancel() {
    this.setData({
      inpValue: "",
      isFocus: false,
      secarchList: []
    })
  }
})