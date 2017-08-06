class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = params[:type].constantize.new
    @type = @product.model_name.to_s
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: "#{@product.type} was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        @type = @product.model_name.to_s
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_update_params)
        format.html { redirect_to products_path, notice: "#{@product.type} was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      if params.has_key?('pen')
        params.require(:pen).permit(:name, :price, :color, :status, :inward_date, :type, :description)
      else
        params.require(:notebook).permit(:name, :price, :status, :inward_date, :type, :description)
      end
    end

    def product_update_params
      if Pen.model_name.to_s.downcase.eql?(@product.type.downcase)
        params.require(:pen).permit(:name, :price, :color, :status, :inward_date, :description)
      else
        params.require(:notebook).permit(:name, :price, :status, :inward_date, :description)
      end
    end
end
