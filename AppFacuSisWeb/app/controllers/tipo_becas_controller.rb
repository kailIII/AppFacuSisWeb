class TipoBecasController < ApplicationController
  # GET /tipo_becas
  # GET /tipo_becas.json
  def index
    @tipo_becas = TipoBeca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_becas }
    end
  end

  # GET /tipo_becas/1
  # GET /tipo_becas/1.json
  def show
    @tipo_beca = TipoBeca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_beca }
    end
  end

  # GET /tipo_becas/new
  # GET /tipo_becas/new.json
  def new
    @tipo_beca = TipoBeca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_beca }
    end
  end

  # GET /tipo_becas/1/edit
  def edit
    @tipo_beca = TipoBeca.find(params[:id])
  end

  # POST /tipo_becas
  # POST /tipo_becas.json
  def create
    @tipo_beca = TipoBeca.new(params[:tipo_beca])

    respond_to do |format|
      if @tipo_beca.save
        format.html { redirect_to @tipo_beca, notice: 'Tipo beca was successfully created.' }
        format.json { render json: @tipo_beca, status: :created, location: @tipo_beca }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_becas/1
  # PUT /tipo_becas/1.json
  def update
    @tipo_beca = TipoBeca.find(params[:id])

    respond_to do |format|
      if @tipo_beca.update_attributes(params[:tipo_beca])
        format.html { redirect_to @tipo_beca, notice: 'Tipo beca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_becas/1
  # DELETE /tipo_becas/1.json
  def destroy
    @tipo_beca = TipoBeca.find(params[:id])
    @tipo_beca.destroy

    respond_to do |format|
      format.html { redirect_to tipo_becas_url }
      format.json { head :no_content }
    end
  end
end
