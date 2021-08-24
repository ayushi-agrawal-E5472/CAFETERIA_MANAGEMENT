class CartItemsController < ApplicationController
    before_action :set_cart
  
    def create
      cart_item = @cart.cart_items.find_by(menu_item_id: params[:menu_item_id])
      if cart_item
        cart_item.quantity += 1
        cart_item.save
        cart_id = @cart.id
        redirect_to carts_path(cart_id)
      else
        params[:quantity] = 1
        item = MenuItem.find(params[:menu_item_id])
        menu_item_id = params[:menu_item_id]
        menu_item_name = item.name
        menu_item_price = item.price
        cart_id = @cart.id
        CartItem.create!(cart_id: cart_id, menu_item_id: menu_item_id, menu_item_name: menu_item_name, menu_item_price: menu_item_price, quantity: 1)
        redirect_to carts_path(cart_id)
      end
    end
  end