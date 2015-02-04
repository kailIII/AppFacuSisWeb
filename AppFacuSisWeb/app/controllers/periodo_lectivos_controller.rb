class PeriodoLectivosController < ApplicationController
  # GET /periodo_lectivos
  # GET /periodo_lectivos.json
  def index
    @periodo_lectivos = PeriodoLectivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @periodo_lectivos }
    end
  end

  # GET /periodo_lectivos/1
  # GET /periodo_lectivos/1.json
  def show
    @periodo_lectivo = PeriodoLectivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @periodo_lectivo }
    end
  end

  # GET /periodo_lectivos/new
  # GET /periodo_lectivos/new.json
  def new
    @periodo_lectivo = PeriodoLectivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @periodo_lectivo }
    end
  end

  # GET /periodo_lectivos/1/edit
  def edit
    @periodo_lectivo = PeriodoLectivo.find(params[:id])
  end

  # POST /periodo_lectivos
  # POST /periodo_lectivos.json
  def create
    @periodo_lectivo = PeriodoLectivo.new(params[:periodo_lectivo])

    respond_to do |format|
      if @periodo_lectivo.save
        format.html { redirect_to @periodo_lectivo, notice: 'Periodo lectivo was successfully created.' }
        format.json { render json: @periodo_lectivo, status: :created, location: @periodo_lectivo }
      else
        format.html { render action: "new" }
        format.json { render json: @periodo_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /periodo_lectivos/1
  # PUT /periodo_lectivos/1.json
  def update
    @periodo_lectivo = PeriodoLectivo.find(params[:id])

    respond_to do |format|
      if @periodo_lectivo.update_attributes(params[:periodo_lectivo])
        format.html { redirect_to @periodo_lectivo, notice: 'Periodo lectivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @periodo_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodo_lectivos/1
  # DELETE /periodo_lectivos/1.json
  def destroy
    @periodo_lectivo = PeriodoLectivo.find(params[:id])
    @periodo_lectivo.destroy

    respond_to do |format|
      format.html { redirect_to periodo_lectivos_url }
      format.json { head :no_content }
    end
  end
end
