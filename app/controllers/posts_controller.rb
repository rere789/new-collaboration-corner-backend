class PostsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        posts = Post.all
        render json: posts
      end
    
      def show
        @post = Post.find(params[:id])
        render json: @post
      end
    
      def create
        @post = Post.create(post_params)
             @post.valid?
         render json: {post: @post}, status: :created
        # else 
        # render json: { error: 'failed to create post' }, status: :not_acceptable
      end

      # def update
      #   @post = Post.find(params[:id])
      #   @post.update(post_params)
      #   reder json: @post
      # end

    
      # def destroy
      #   @post = Post.find(params[:id])
      #   @post.destroy
      # end
    
      private
    
      def post_params
        params.require(:post).permit(:description, :needed_skillset, :snippet, :user_id)
      end

    #   
end
