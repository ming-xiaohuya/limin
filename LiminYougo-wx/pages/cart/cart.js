// pages/cart/cart.js
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
    const cart = wx.getStorageSync('cart')||[];

    // 商品全选
    // const allChecked = cart.length?cart.every(v=>v.checked):false;
    this.setData({
      address
    })
    this.setCart(cart);
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  handleChooseAddress() {
    // wx.chooseAddress({
    //   success: (result) => {
    //     console.log(result);
    //   }
    // })
    wx.getSetting({
      success: (result) => {
        const scopAddress = result.authSetting["scop.address"];
        if (scopAddress === true||scopAddress===undefined) {
          wx.chooseAddress({
            success: (result1) => {
              const address = result1;
              wx.setStorageSync("address", address);
            }
          });
        } else {
          wx.openSetting({
            success: (result2) => {
              wx.chooseAddress({
                success: (result3) => {
                  console.log(result3);
                }
              })
            }
          })
        }
      }
    })
  },
  handleItemChange(e) {
    const id = e.currentTarget.dataset.id;
    let { cart } = this.data;
    let index = cart.findIndex(v => v.products.id===id);
    cart[index].checked =!cart[index].checked;
    
    this.setCart(cart);
   
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
  },
  // 商品的全选功能
  handleItemAllCheck() {
    let { cart,allChecked } = this.data;
    allChecked =! allChecked;
    cart.forEach(v => v.checked=allChecked);
    this.setCart(cart);
  },
  // 商品数量编辑功能
  handleItemNumEdit(e) {
    // wx.showModal({
    //   title: '提示',
    //   content: '这是一个弹窗',
    //   showCancel: true,
    //   cancelText: '取消',
    //   cancelColor: '#000000',
    //   confirmText: '确定',
    //   confirmColor: '#3CC51F',
    //   success: (result) => {
    //     if(result.confirm){
          
    //     }
    //   },
    //   fail: ()=>{},
    //   complete: ()=>{}
    // });
    // return;

    const { operation, id } = e.currentTarget.dataset;

    let { cart } = this.data;
    const index = cart.findIndex(v => v.products.id === id);

    if (cart[index].num === 1 && operation === -1) {
      wx.showModal({
        title: '提示',
        content: '是否要删除该商品',
        showCancel: true,
        cancelText: '取消',
        cancelColor: '#000000',
        confirmText: '确定',
        confirmColor: '#3CC51F',
        success: (result) => {
          if(result.confirm){
            cart.splice(index, 1) ;
            this.setCart(cart);
          }
        },
        fail: ()=>{},
        complete: ()=>{}
      });
    } else {
      cart[index].num += operation;
      this.setCart(cart);
    }
  },
  // 点击结算按钮
  handlePay() {
    const {address,totalNum} = this.data;
    if (!address.userName) {
      wx.showToast({
        title: '请选择收货地址',
        icon: 'none'
      });
      return;
    }

    if (totalNum === 0) {
      wx.showToast({
        title: '你还没有加购商品',
        icon: 'none'
      });
      return;
    }

    wx.navigateTo({
      url: '/pages/pay/index',
    });
  }
})