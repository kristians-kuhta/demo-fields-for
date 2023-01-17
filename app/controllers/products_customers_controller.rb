class ProductsCustomersController < ApplicationController
  before_action :set_products_customer, only: %i[ show edit update destroy ]

  # GET /products_customers or /products_customers.json
  def index
    @products_customers = ProductsCustomer.all
  end

  # GET /products_customers/1 or /products_customers/1.json
  def show
  end

  # GET /products_customers/new
  def new
    @products_customer = ProductsCustomer.new
  end

  # GET /products_customers/1/edit
  def edit
  end

  # POST /products_customers or /products_customers.json
  def create
    @products_customer = ProductsCustomer.new(products_customer_params)

    respond_to do |format|
      if @products_customer.save
        format.html { redirect_to products_customer_url(@products_customer), notice: "Products customer was successfully created." }
        format.json { render :show, status: :created, location: @products_customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @products_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_customers/1 or /products_customers/1.json
  def update
    respond_to do |format|
      if @products_customer.update(products_customer_params)
        format.html { redirect_to products_customer_url(@products_customer), notice: "Products customer was successfully updated." }
        format.json { render :show, status: :ok, location: @products_customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @products_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_customers/1 or /products_customers/1.json
  def destroy
    @products_customer.destroy

    respond_to do |format|
      format.html { redirect_to products_customers_url, notice: "Products customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_customer
      @products_customer = ProductsCustomer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def products_customer_params
      params.require(:products_customer).permit(:product_id, :customer_id)
    end
end
