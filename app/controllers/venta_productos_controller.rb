class VentaProductosController < ApplicationController
  before_action :set_venta_producto, only: [:show, :edit, :update, :destroy]

  # GET /venta_productos
  # GET /venta_productos.json
  def index
    @venta_productos = VentaProducto.all
  end

  # GET /venta_productos/1
  # GET /venta_productos/1.json
  def show
  end

  # GET /venta_productos/new
  def new
    @venta_producto = VentaProducto.new
  end

  # GET /venta_productos/1/edit
  def edit
  end

  # POST /venta_productos
  # POST /venta_productos.json
  def create
    @venta_producto = VentaProducto.new(venta_producto_params)

    respond_to do |format|
      if @venta_producto.save
        format.html { redirect_to @venta_producto, notice: 'Venta producto was successfully created.' }
        format.json { render :show, status: :created, location: @venta_producto }
      else
        format.html { render :new }
        format.json { render json: @venta_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venta_productos/1
  # PATCH/PUT /venta_productos/1.json
  def update
    respond_to do |format|
      if @venta_producto.update(venta_producto_params)
        format.html { redirect_to @venta_producto, notice: 'Venta producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @venta_producto }
      else
        format.html { render :edit }
        format.json { render json: @venta_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venta_productos/1
  # DELETE /venta_productos/1.json
  def destroy
    @venta_producto.destroy
    respond_to do |format|
      format.html { redirect_to venta_productos_url, notice: 'Venta producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venta_producto
      @venta_producto = VentaProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venta_producto_params
      params.require(:venta_producto).permit(:venta_id, :producto_id)
    end
end
