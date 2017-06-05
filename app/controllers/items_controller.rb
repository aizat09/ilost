class ItemsController < ApplicationController
	before_action :find_item, only: [:show, :edit, :update, :destroy]	

	def index
		if params[:category].blank?
		 @items = Item.all.order("created_at DESC")
		else 
		 @category_id = Category.find_by(name: params[:category]).id
		 @items = Item.where(:category_id => @category_id).order("created_at DESC")
		end

	end

	def show 
	
	end

	def new
		@item = current_user.items.build
		@categories = Category.all.map { |c| [c.name, c.id] }
	end

	def create
		@item = current_user.items.build(item_params)
		@item.category_id = params[:category_id]

		if @item.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map { |c| [c.name, c.id] }

	end

	def update
		
		if @item.update(item_params)
			redirect_to item_path(@item)
		else 
			render 'edit'
		end
	end

	def destroy
		@item.destroy
		redirect_to root_path

	end

	private 

		def item_params
			params.require(:item).permit(:title, :description, :author, :category_id)
		
		end

		def find_item
			@item = Item.find(params[:id])

		end
end
