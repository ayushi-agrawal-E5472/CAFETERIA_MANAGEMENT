class Order < ApplicationRecord
    has_many :order_items
    belongs_to :user
  
    def sub_total
      sum = 0
      self.cart_items.each do |item|
        sum+= item.total_price
      end
      return sum
    end
  end