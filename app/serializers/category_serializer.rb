class CategorySerializer < ActiveModel::Serializer
  attributes :title, :subcategories
end
