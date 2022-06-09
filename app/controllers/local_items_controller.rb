class LocalItemsController < ApplicationController
  include CurrentList #Incuindo o módulo
  before_action :set_list, only: [:create]
  before_action :set_local_item, only: %i[ show edit update destroy ]

  # GET /local_items or /local_items.json
  def index
    @local_items = LocalItem.all
  end

  # GET /local_items/1 or /local_items/1.json
  def show
  end

  # GET /local_items/new
  def new
    @local_item = LocalItem.new
  end

  # GET /local_items/1/edit
  def edit
  end

  # POST /local_items or /local_items.json
  
  ####### meu codigo
  def create
    livro = Livro.find(params[:livro_id]) #organizado
    @local_item = @list.local_items.build(livro: livro) #organizado!

    respond_to do |format|
      if @local_item.save
        format.html { redirect_to @local_item.list, notice: "Lista criada com sucesso" }
        format.json { render :show, status: :created, location: @local_item }
      else
        format.html { render :new }
        format.json { render json: @local_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_items/1 or /local_items/1.json
  def update
    respond_to do |format|
      if @local_item.update(local_item_params)
        format.html { redirect_to local_item_url(@local_item), notice: "Local item was successfully updated." }
        format.json { render :show, status: :ok, location: @local_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @local_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_items/1 or /local_items/1.json
  def destroy
    @local_item.destroy

    respond_to do |format|
      format.html { redirect_to local_items_url, notice: "Local item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_item
      @local_item = LocalItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def local_item_params
      params.require(:local_item).permit(:livro_id, :list_id)
    end
end
