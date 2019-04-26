class StockingProductsController < ApplicationController
  before_action :set_stocking_product, only: [:show, :edit, :update, :destroy]

  # GET /stocking_products
  # GET /stocking_products.json
  def index
    @stocking_products = StockingProduct.all
  end

  # GET /stocking_products/1
  # GET /stocking_products/1.json
  def show
  end

  # GET /stocking_products/new
  def new
    @stocking_product = StockingProduct.new
  end

  # GET /stocking_products/1/edit
  def edit
  end

  # POST /stocking_products
  # POST /stocking_products.json
  def create
    @stocking_product = StockingProduct.new(stocking_product_params)

    respond_to do |format|
      if @stocking_product.save
        format.html { redirect_to stocking_path(@stocking_product.stocking_id), notice: 'Stocking product was successfully created.' }
        format.json { render :show, status: :created, location: @stocking_product }
      else
        format.html { render :new }
        format.json { render json: @stocking_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocking_products/1
  # PATCH/PUT /stocking_products/1.json
  def update
    respond_to do |format|
      if @stocking_product.update(stocking_product_params)
        format.html { redirect_to @stocking_product, notice: 'Stocking product was successfully updated.' }
        format.json { render :show, status: :ok, location: @stocking_product }
      else
        format.html { render :edit }
        format.json { render json: @stocking_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocking_products/1
  # DELETE /stocking_products/1.json
  def destroy
    @stocking_product.destroy
    respond_to do |format|
      format.html { redirect_to stocking_path(@stocking_product.stocking_id), notice: 'Stocking product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stocking_product
      @stocking_product = StockingProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stocking_product_params
      params.require(:stocking_product).permit(:stocking_id, :product_id, :numbering_id, :entry, :out, :balance, :sale_product_id)
    end
end
