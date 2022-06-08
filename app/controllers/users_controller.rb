class UsersController < ApplicationController
  
  def new
    @user = User.new
    @livros = Livro.order(:titulo).page params[:page]
  end
 
  def create
    @user = User.new(user_params)
    case
    when @user.save
      flash[:alert] = "Usuário criado com sucesso!"
      redirect_to login_path 
    end
end
 
 private
 
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  def livro_params 
    params.require(:livro).permit(:titulo, :autor, :ano)
  end
end
 