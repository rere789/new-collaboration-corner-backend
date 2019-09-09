class UserprojectsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        @projects = Userproject.all
        render json: @projects
    end

    def my_collaborations
        @current_user_id = current_user.id
        my_projects = Userproject.where(user_id: @current_user_id)
        if my_projects == nill 
          render json: {error: 'no current collaborations'}
        else
        render json: my_projects
        end
    end

      
    def show
        @project = Userproject.find(params[:id])
        render json: @project
    end


    def create
        @project = Userproject.create(user_project_params)
         render json: {userproject: @project}, status: :created
        # else 
        # render json: { error: 'failed to create post' }, status: :not_acceptable
    end

    

      # def update
      #   @project = Userproject.find(params[:id])
      #   @project.update(user_project_params)
      #   reder json: @project
      # end

    
      # def destroy
      #   @project = Userproject.find(params[:id])
      #   @project.destroy
      # end
     
      private
    
      def user_project_params
        params.require(:userproject).permit(:user_id, :post_id)
      end
end

