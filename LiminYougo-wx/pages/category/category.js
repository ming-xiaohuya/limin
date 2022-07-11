// pages/category/category.js
import { request } from "../../request/index.js";
Page({
  data: {
    // 左边菜单数据
    leftMenuList: [],
    // 右边商品数据
    rightContent: [],
    // 左侧被点击时
    currentIndex: 0
  },
  // 接口返回数据
  sortList: [],
  onLoad:function (options) {

    // 获得本地存储数据
    const sortList = wx.getStorageSync('cates');

    // 判断本地存储中是否存有有效数据
    if (!sortList) {
      this.getSortList();
    } else {
      if(Date.now() - sortList.time > 1000 * 10) {
        this.getSortList();
      } else {
        this.sortList = sortList.data;
        // 构造左侧菜单数据
        let leftMenuList = this.sortList.map(v=>v.name);

        let rightContent = this.sortList[0].sortTitles;
        this.setData({
          leftMenuList,
          rightContent
        })
      }
    }
    
  },
  // 获取轮播图
  getSortList() {
    request({url:"http://localhost:8087/api/querySort"})
    .then(result=>{
      this.sortList = result.data.data.message;

      // 将接口数据存入到本地存储中
      wx.setStorageSync('cates', {time: Date.now(), data: this.sortList});

      // 构造左侧菜单数据
      let leftMenuList = this.sortList.map(v=>v.name);

      let rightContent = this.sortList[0].sortTitles;
      this.setData({
        leftMenuList,
        rightContent
      })
    })
  },
  // 左侧菜单点击切换事件
  handleItemTap(e) {
    /**
     * 获取被点击的索引
     * 给data中的currentIndex赋值
     * 根据被点击的索引渲染右侧的商品内容
     */
    const { index } = e.currentTarget.dataset;
    let rightContent = this.sortList[index].sortTitles;
    this.setData({
      currentIndex: index,
      rightContent
    })
    

  }
});
  
