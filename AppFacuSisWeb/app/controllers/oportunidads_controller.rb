class OportunidadsController < ApplicationController
  # GET /oportunidads
  # GET /oportunidads.json
  def index
    @oportunidads = Oportunidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oportunidads }
    end
  end

  # GET /oportunidads/1
  # GET /oportunidads/1.json
  def show
    @oportunidad = Oportunidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oportunidad }
    end
  end

  # GET /oportunidads/new
  # GET /oportunidads/new.json
  def new
    @oportunidad = Oportunidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oportunidad }
    end
  end

  # GET /oportunidads/1/edit
  def edit
    @oportunidad = Oportunidad.find(params[:id])
  end

  # POST /oportunidads
  # POST /oportunidads.json
  def create
    @oportunidad = Oportunidad.new(params[:oportunidad])

    respond_to do |format|
      if @oportunidad.save
        format.html { redirect_to @oportunidad, notice: 'Oportunidad was successfully created.' }
        format.json { render json: @oportunidad, status: :created, location: @oportunidad }
      else
        format.html { render action: "new" }
        format.json { render json: @oportunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oportunidads/1
  # PUT /oportunidads/1.json
  def update
    @oportunidad = Oportunidad.find(params[:id])

    respond_to do |format|
      if @oportunidad.update_attributes(params[:oportunidad])
        format.html { redirect_to @oportunidad, notice: 'Oportunidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oportunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oportunidads/1
  # DELETE /oportunidads/1.json
  def destroy
    @oportunidad = Oportunidad.find(params[:id])
    @oportunidad.destroy

    respond_to do |format|
      format.html { redirect_to oportunidads_url }
      format.json { head :no_content }
    end
  end
end
