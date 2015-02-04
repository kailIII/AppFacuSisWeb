class ModoIngresosController < ApplicationController
  # GET /modo_ingresos
  # GET /modo_ingresos.json
  def index
    @modo_ingresos = ModoIngreso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modo_ingresos }
    end
  end

  # GET /modo_ingresos/1
  # GET /modo_ingresos/1.json
  def show
    @modo_ingreso = ModoIngreso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modo_ingreso }
    end
  end

  # GET /modo_ingresos/new
  # GET /modo_ingresos/new.json
  def new
    @modo_ingreso = ModoIngreso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modo_ingreso }
    end
  end

  # GET /modo_ingresos/1/edit
  def edit
    @modo_ingreso = ModoIngreso.find(params[:id])
  end

  # POST /modo_ingresos
  # POST /modo_ingresos.json
  def create
    @modo_ingreso = ModoIngreso.new(params[:modo_ingreso])

    respond_to do |format|
      if @modo_ingreso.save
        format.html { redirect_to @modo_ingreso, notice: 'Modo ingreso was successfully created.' }
        format.json { render json: @modo_ingreso, status: :created, location: @modo_ingreso }
      else
        format.html { render action: "new" }
        format.json { render json: @modo_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modo_ingresos/1
  # PUT /modo_ingresos/1.json
  def update
    @modo_ingreso = ModoIngreso.find(params[:id])

    respond_to do |format|
      if @modo_ingreso.update_attributes(params[:modo_ingreso])
        format.html { redirect_to @modo_ingreso, notice: 'Modo ingreso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modo_ingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modo_ingresos/1
  # DELETE /modo_ingresos/1.json
  def destroy
    @modo_ingreso = ModoIngreso.find(params[:id])
    @modo_ingreso.destroy

    respond_to do |format|
      format.html { redirect_to modo_ingresos_url }
      format.json { head :no_content }
    end
  end
end
