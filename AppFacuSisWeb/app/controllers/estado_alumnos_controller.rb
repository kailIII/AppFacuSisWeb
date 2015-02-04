class EstadoAlumnosController < ApplicationController
  # GET /estado_alumnos
  # GET /estado_alumnos.json
  def index
    @estado_alumnos = EstadoAlumno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estado_alumnos }
    end
  end

  # GET /estado_alumnos/1
  # GET /estado_alumnos/1.json
  def show
    @estado_alumno = EstadoAlumno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estado_alumno }
    end
  end

  # GET /estado_alumnos/new
  # GET /estado_alumnos/new.json
  def new
    @estado_alumno = EstadoAlumno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estado_alumno }
    end
  end

  # GET /estado_alumnos/1/edit
  def edit
    @estado_alumno = EstadoAlumno.find(params[:id])
  end

  # POST /estado_alumnos
  # POST /estado_alumnos.json
  def create
    @estado_alumno = EstadoAlumno.new(params[:estado_alumno])

    respond_to do |format|
      if @estado_alumno.save
        format.html { redirect_to @estado_alumno, notice: 'Estado alumno was successfully created.' }
        format.json { render json: @estado_alumno, status: :created, location: @estado_alumno }
      else
        format.html { render action: "new" }
        format.json { render json: @estado_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estado_alumnos/1
  # PUT /estado_alumnos/1.json
  def update
    @estado_alumno = EstadoAlumno.find(params[:id])

    respond_to do |format|
      if @estado_alumno.update_attributes(params[:estado_alumno])
        format.html { redirect_to @estado_alumno, notice: 'Estado alumno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estado_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_alumnos/1
  # DELETE /estado_alumnos/1.json
  def destroy
    @estado_alumno = EstadoAlumno.find(params[:id])
    @estado_alumno.destroy

    respond_to do |format|
      format.html { redirect_to estado_alumnos_url }
      format.json { head :no_content }
    end
  end
end
