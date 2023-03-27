class UsersController< ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render.json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def user_params
        params.require(:user).permit(:name, :email, :phone, :password)
    end



    private

    def render_not_found_response
      render json: { error: 'Product not found' }, status: :not_found
    end
end