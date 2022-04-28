class PersonalDetailsController <ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create_user
  end

  def create
    @user = User.new(user_params)
    binding.pry 
    @create = "created"
    if @user.save
      render 'success'
    else
      render 'fail'
    end
  end

  def show
    @user = User.all
  end
  

  def update
    @user = User.find(params[:id])
  end

  def updating
   @user =User.find(params[:id])
   @create ="updated"  
   if @user.update(user_params)
    render 'success'
   else
    render 'fail'
   end

  end

  def delete_user
    @user = User.find(params[:id])
    @user.images.purge
    @create="destroyed"
    if @user.destroy
      render 'success'
    else
      render 'fail'
    end
  end

  def view_user
    @user = User.find(params[:id])
  end
  


  private

  def user_params
    params.permit(:name, :phone, :address, :gender, :adhar_number, images: [])
  end
  
end

