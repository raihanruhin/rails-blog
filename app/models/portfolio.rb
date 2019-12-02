class Portfolio < ApplicationRecord
    validates_present_of :title, :body, :main_image, :thumb_image
end
