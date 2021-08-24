class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :menu_item
    def total_price
      self.quantity * self.menu_item_price
    end
  end