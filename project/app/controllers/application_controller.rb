class ApplicationController < ActionController::Base
    helper_method :current_order
    helper_method :current_user

    def current_order
        @current_order = TransactionOrder.new
        @current_order.user = current_user
        @current_order.order_status = "Unpaid"
        return @current_order
    end

    def current_user
        @current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
    end 
end
