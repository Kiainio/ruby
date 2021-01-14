class Product < ApplicationRecord
    belongs_to :color
    belongs_to :size
    belongs_to :type
    has_one :cart_item
    belongs_to :user
end
