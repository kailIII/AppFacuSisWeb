class AsignacionDocentesController < ApplicationController
  # GET /asignacion_docentes
  # GET /asignacion_docentes.json
  def index
    @asignacion_docentes = AsignacionDocente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignacion_docentes }
    end
  end

  # GET /asignacion_docentes/1
  # GET /asignacion_docentes/1.json
  def show
    @asignacion_docente = AsignacionDocente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignacion_docente }
    end
  end

  # GET /asignacion_docentes/new
  # GET /asignacion_docentes/new.json
  def new
    @asignacion_docente = AsignacionDocente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignacion_docente }
    end
  end

  # GET /asignacion_docentes/1/edit
  def edit
    @asignacion_docente = AsignacionDocente.find(params[:id])
  end

  # POST /asignacion_docentes
  # POST /asignacion_docentes.json
  def create
    @asignacion_docente = AsignacionDocente.new(params[:asignacion_docente])

    respond_to do |format|
      if @asignacion_docente.save
        format.html { redirect_to @asignacion_docente, notice: 'Asignacion docente was successfully created.' }
        format.json { render json: @asignacion_docente, status: :created, location: @asignacion_docente }
      else
        format.html { render action: "new" }
        format.json { render json: @asignacion_docente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asignacion_docentes/1
  # PUT /asignacion_docentes/1.json
  def update
    @asignacion_docente = AsignacionDocente.find(params[:id])

    respond_to do |format|
      if @asignacion_docente.update_attributes(params[:asignacion_docente])
        format.html { redirect_to @asignacion_docente, notice: 'Asignacion docente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignacion_docente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_docentes/1
  # DELETE /asignacion_docentes/1.json
  def destroy
    @asignacion_docente = AsignacionDocente.find(params[:id])
    @asignacion_docente.destroy

    respond_to do |format|
      format.html { redirect_to asignacion_docentes_url }
      format.json { head :no_content }
    end
  end
end
