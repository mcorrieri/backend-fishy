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
        @post = Post.new(post_params)

        if @post.valid?
            @post.save 
            render json: @post 
        else 
            render json: {error: "cannot create post"}
        end 
    end 

    def destroy
        @post.destroy
    end

    private
    def post_params
        params.require(:post).permit(:date, :description, :image, :water_type, :location)
    end

end
