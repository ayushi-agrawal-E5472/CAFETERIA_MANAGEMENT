class Cart < ApplicationRecord
    has_many :cart_items
    belongs_to :user
  
    def sub_total
      sum = 0
      self.cart_items.each do |item|
        sum+= item.total_price
      end
      return sum
    end
  end