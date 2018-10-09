class TodoListController < ApplicationController
	def create
		#render plain: params[:todo_list]. inspect
		@post = todo_list.new(todo_params)
		@post.save
		redirect_to @post
	end 

	private def todo_params
		params.require(:todo_list).permit(:title, :body)
	end
	def  show
		@post = todo_list.find(params[:id])
	end

	def view
		@post = todo_list.all

	end
end
