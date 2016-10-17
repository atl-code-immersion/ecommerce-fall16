class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :brands, :categories

  def brands
  	@brands = Product.pluck(:brand).sort.uniq!
  end

  def categories
  	@categories = Category.order(:name)
  end
end
