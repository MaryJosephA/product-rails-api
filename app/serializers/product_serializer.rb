# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :prod_name, :quantity, :editable

  def editable
    scope == object.user
  end
   end
