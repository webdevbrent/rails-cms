class PostsController < ApplicationController
before_action :get_post, only: [:show, :edit, :update, :destroy]
# CRUD = create, read, update, and destroy

# View
    def index
        @posts = Post.all
    end
# View
    def show
    end
# View
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, notice: 'Post has been created!'
        else
            redirect_to new_post_path, notice: 'There are some problems...'
        end
    end
# View
    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to @post, notice: 'Post has been updated!'
        else
            redirect_to edit_post_path(@post), notice: 'Problem with the edit...'
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_url, notice: 'Post Deleted'
    end

private
    def get_post
        @post = Post.find(params[:id])
    end
    def post_params
        params.require(:post).permit(:title, :body)
    end
end