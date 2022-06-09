####### meu codigo
class SessionController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:alert] = "Logado com sucesso"
      redirect_to user
    else
      flash[:alert] = "Login ou senha incorretas"
      redirect_to login_path
      
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "Você foi desconectado"
    redirect_to root_path
  end
end
