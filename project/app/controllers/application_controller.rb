class ApplicationController < ActionController::Base
    helper_method :current_order

    def current_order
        @current_order = TransactionOrder.new
        @current_order.order_status = "Unpaid"
        return @current_order
    end
end
