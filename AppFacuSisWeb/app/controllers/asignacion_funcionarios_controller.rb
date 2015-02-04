class AsignacionFuncionariosController < ApplicationController
  # GET /asignacion_funcionarios
  # GET /asignacion_funcionarios.json
  def index
    @asignacion_funcionarios = AsignacionFuncionario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignacion_funcionarios }
    end
  end

  # GET /asignacion_funcionarios/1
  # GET /asignacion_funcionarios/1.json
  def show
    @asignacion_funcionario = AsignacionFuncionario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignacion_funcionario }
    end
  end

  # GET /asignacion_funcionarios/new
  # GET /asignacion_funcionarios/new.json
  def new
    @asignacion_funcionario = AsignacionFuncionario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignacion_funcionario }
    end
  end

  # GET /asignacion_funcionarios/1/edit
  def edit
    @asignacion_funcionario = AsignacionFuncionario.find(params[:id])
  end

  # POST /asignacion_funcionarios
  # POST /asignacion_funcionarios.json
  def create
    @asignacion_funcionario = AsignacionFuncionario.new(params[:asignacion_funcionario])

    respond_to do |format|
      if @asignacion_funcionario.save
        format.html { redirect_to @asignacion_funcionario, notice: 'Asignacion funcionario was successfully created.' }
        format.json { render json: @asignacion_funcionario, status: :created, location: @asignacion_funcionario }
      else
        format.html { render action: "new" }
        format.json { render json: @asignacion_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asignacion_funcionarios/1
  # PUT /asignacion_funcionarios/1.json
  def update
    @asignacion_funcionario = AsignacionFuncionario.find(params[:id])

    respond_to do |format|
      if @asignacion_funcionario.update_attributes(params[:asignacion_funcionario])
        format.html { redirect_to @asignacion_funcionario, notice: 'Asignacion funcionario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignacion_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_funcionarios/1
  # DELETE /asignacion_funcionarios/1.json
  def destroy
    @asignacion_funcionario = AsignacionFuncionario.find(params[:id])
    @asignacion_funcionario.destroy

    respond_to do |format|
      format.html { redirect_to asignacion_funcionarios_url }
      format.json { head :no_content }
    end
  end
end
