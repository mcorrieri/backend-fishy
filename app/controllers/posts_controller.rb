class PostsController < ApplicationController
    
    def index
        @posts = Post.all
        filtered_posts = @posts.select {|post| post.fish.owner_id == nil } 
        render json: filtered_posts
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

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @post
    end

    private
    def post_params
        params.permit(:date, :description, :image, :location, :price, :comment, :fish_id, :user_id)
    end

end
