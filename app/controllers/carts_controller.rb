class CartsController < ApplicationController

    def destroy
        cart = current_user.carts.find(params[:id])
        order = Order.create!(date: Date.today, user_id: current_user.id, delivered_at: DateTime.now + 3)
        cart.cart_items.each do |item|
            OrderItem.create!(
            order_id: order.id,
            menu_item_id: item.menu_item_id,
            menu_item_name: item.menu_item_name,
            menu_item_price: item.menu_item_price,
            quantity: item.quantity,
            )
        end
        cart.destroy
        redirect_to orders_path
    end
end