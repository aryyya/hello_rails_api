class Api::V1::CategoryController < ApplicationController
  respond_to :json

  def show
    category = params[:category] || "sports"
    @category = Category.where(title: category.capitalize).first
    render json: @category, serializer: CategorySerializer, root: "category"
  end
end
