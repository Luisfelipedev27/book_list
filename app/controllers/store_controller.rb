####### meu codigo
class StoreController < ApplicationController
  def index
    @livros = Livro.order(:titulo).page params[:page]
  end
end
