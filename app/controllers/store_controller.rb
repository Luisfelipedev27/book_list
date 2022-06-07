class StoreController < ApplicationController
  def index
    @livros = Livro.order(:titulo)
  end
end
