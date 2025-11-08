class Photo < ApplicationRecord
    has_one_attached :image
      
    validates :title, presence: true
    validates :image, attached: true, 
                      content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                      size: { less_than: 20.megabytes }
end
