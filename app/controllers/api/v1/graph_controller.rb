class Api::V1::GraphController < ApplicationController
  respond_to(:json)

  def show
    category = params[:category] || "sports"
    @category = Category.where(title: category.capitalize).first
    @links = Link.where(to: @category.title, type_: "subcat")
    render(json: @links, each_serializer: LinkSerializer, root: @category.title.downcase)
  end

  private

  def graph_params
    params.require(:category).permit(:to, :type)
  end
end
