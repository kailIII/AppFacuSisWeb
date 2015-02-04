class NroActaController < ApplicationController
  # GET /nro_acta
  # GET /nro_acta.json
  def index
    @nro_acta = NroActum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nro_acta }
    end
  end

  # GET /nro_acta/1
  # GET /nro_acta/1.json
  def show
    @nro_actum = NroActum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nro_actum }
    end
  end

  # GET /nro_acta/new
  # GET /nro_acta/new.json
  def new
    @nro_actum = NroActum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nro_actum }
    end
  end

  # GET /nro_acta/1/edit
  def edit
    @nro_actum = NroActum.find(params[:id])
  end

  # POST /nro_acta
  # POST /nro_acta.json
  def create
    @nro_actum = NroActum.new(params[:nro_actum])

    respond_to do |format|
      if @nro_actum.save
        format.html { redirect_to @nro_actum, notice: 'Nro actum was successfully created.' }
        format.json { render json: @nro_actum, status: :created, location: @nro_actum }
      else
        format.html { render action: "new" }
        format.json { render json: @nro_actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nro_acta/1
  # PUT /nro_acta/1.json
  def update
    @nro_actum = NroActum.find(params[:id])

    respond_to do |format|
      if @nro_actum.update_attributes(params[:nro_actum])
        format.html { redirect_to @nro_actum, notice: 'Nro actum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nro_actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nro_acta/1
  # DELETE /nro_acta/1.json
  def destroy
    @nro_actum = NroActum.find(params[:id])
    @nro_actum.destroy

    respond_to do |format|
      format.html { redirect_to nro_acta_url }
      format.json { head :no_content }
    end
  end
end
