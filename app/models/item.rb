class Item < ApplicationRecord
has_many :item_images
accepts_nested_attributes_for :item_images, allow_destroy: true
belongs_to :user
belongs_to :brand, optional: true

extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :category
belongs_to_active_hash :condition
belongs_to_active_hash :ShippingFee
belongs_to_active_hash :DayToShip
belongs_to_active_hash :prefecture

  with_options presence: true do
    validates :product_name
    validates :description
    validates :category_id
    validates :condition_id
    validates :shipping_fee_id
    validates :prefecture_id
    validates :day_to_ship_id
    validates :price
    validates :item_image_ids
  end
end