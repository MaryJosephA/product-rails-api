# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :prod_name, :quantity
end
