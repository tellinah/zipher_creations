class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end

  def items_by_category
	@product = Product.where(category_id: params[:category_id])
    @category = Category.find(params[:category_id])
  end
  
end
