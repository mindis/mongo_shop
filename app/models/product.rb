class Product
  include Mongoid::Document

  field :name, type: String
  field :price, type: Float

  validates_presence_of :name, :price
end
