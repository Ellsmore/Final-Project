class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update]

  def index
    @carts = Cart.all
  end

  def show

  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to(store_path) } # notice: 'Cart was successfully emptied.') }
      format.json { head :no_content }
    end
  end

  private
    def set_cart
      begin
        @cart = Cart.find(params[:id])
      rescue ActiveRecord::RecordNotFound # Intercepts exceptions raised by Cart.find.
        logger.error "Attempt to access invalid cart #{ params[:id] }" # Using rails logger to record a message at the error loggin level.
        redirect_to store_path, :notice => 'INVALID cart'
      else
        respond_to do |format|
          format.html
          format.json { render :json => @cart}
        end
      end
    end

    def cart_params
      params.fetch(:cart, {})
    end
end
