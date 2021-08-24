class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :menu_item
    belongs_to :order, optional: true
  
  
    def of_user(user)
      all.where(cart_id: user.id)
    end
    
    def total_price
      self.quantity * self.menu_item_price
    end
  end