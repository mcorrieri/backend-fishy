class PostsController < ApplicationController
    
    def index
        @posts = Post.all 
        render json: @posts
    end

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create 
        @post = Post.create(post_params)
        if @post.valid?
            render json: @post
        else 
            render json: {message: "cannot create post"}
        end 
    end 

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: {message: "Post deleted"}
    end

    private
    def post_params
        params.permit(:date, :description, :image, :water_type, :location)
    end

end
