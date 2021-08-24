class ApplicationController < ActionController::Base
    before_action :ensure_user_logged_in
    before_action :set_cart, optional: true
  
    def ensure_user_logged_in
      unless current_user
        redirect_to "/"
      end
    end
  
    def current_user
      return @current_user if @current_user
      current_user_id = session[:current_user_id]
      if current_user_id
        @current_user = User.find(current_user_id)
      else
        nil
      end
    end
    
    def set_cart
      @cart = current_user.carts.find_by(id: session[:cart_id]) || current_user.carts.create
      session[:cart_id] = @cart.id
    end
  
end
