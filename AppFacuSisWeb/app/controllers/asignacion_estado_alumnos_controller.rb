class AsignacionEstadoAlumnosController < ApplicationController
  # GET /asignacion_estado_alumnos
  # GET /asignacion_estado_alumnos.json
  def index
    @asignacion_estado_alumnos = AsignacionEstadoAlumno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignacion_estado_alumnos }
    end
  end

  # GET /asignacion_estado_alumnos/1
  # GET /asignacion_estado_alumnos/1.json
  def show
    @asignacion_estado_alumno = AsignacionEstadoAlumno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignacion_estado_alumno }
    end
  end

  # GET /asignacion_estado_alumnos/new
  # GET /asignacion_estado_alumnos/new.json
  def new
    @asignacion_estado_alumno = AsignacionEstadoAlumno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignacion_estado_alumno }
    end
  end

  # GET /asignacion_estado_alumnos/1/edit
  def edit
    @asignacion_estado_alumno = AsignacionEstadoAlumno.find(params[:id])
  end

  # POST /asignacion_estado_alumnos
  # POST /asignacion_estado_alumnos.json
  def create
    @asignacion_estado_alumno = AsignacionEstadoAlumno.new(params[:asignacion_estado_alumno])

    respond_to do |format|
      if @asignacion_estado_alumno.save
        format.html { redirect_to @asignacion_estado_alumno, notice: 'Asignacion estado alumno was successfully created.' }
        format.json { render json: @asignacion_estado_alumno, status: :created, location: @asignacion_estado_alumno }
      else
        format.html { render action: "new" }
        format.json { render json: @asignacion_estado_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asignacion_estado_alumnos/1
  # PUT /asignacion_estado_alumnos/1.json
  def update
    @asignacion_estado_alumno = AsignacionEstadoAlumno.find(params[:id])

    respond_to do |format|
      if @asignacion_estado_alumno.update_attributes(params[:asignacion_estado_alumno])
        format.html { redirect_to @asignacion_estado_alumno, notice: 'Asignacion estado alumno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignacion_estado_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_estado_alumnos/1
  # DELETE /asignacion_estado_alumnos/1.json
  def destroy
    @asignacion_estado_alumno = AsignacionEstadoAlumno.find(params[:id])
    @asignacion_estado_alumno.destroy

    respond_to do |format|
      format.html { redirect_to asignacion_estado_alumnos_url }
      format.json { head :no_content }
    end
  end
end
