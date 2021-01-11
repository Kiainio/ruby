class Product < ApplicationRecord
    belongs_to :color
    belongs_to :size
    belongs_to :type
end
