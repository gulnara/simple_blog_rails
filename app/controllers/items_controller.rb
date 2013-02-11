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

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		flash.notice = "Article '#{@item.title}' Deleted!"
		redirect_to items_path
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update 
		@item = Item.find(params[:id])
		@item.update_attributes(params[:item])

		flash.notice = "Article '#{@item.title}' Updated!"

		redirect_to item_path(@item)
	end
	


end
