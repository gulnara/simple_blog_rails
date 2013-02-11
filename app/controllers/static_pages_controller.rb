class StaticPagesController < ApplicationController
  def admin
  	@item = Item.new
  	@items = Item.all
  end

  def about
  end

  def resources
  end
  
end
