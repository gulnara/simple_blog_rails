class ItemsController < ApplicationController
	def index
		@all_posts = Item.find(:all, :order => "created_at desc")
	end

	def show
		@all_posts = Item.find(:all, :order => "created_at desc")
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end
	
	def create
  		@item = Item.new(params[:item])
  		@item.save
  		flash.notice = "Article '#{@item.title}' Created!"
  		redirect_to item_path(@item)
	end
end
