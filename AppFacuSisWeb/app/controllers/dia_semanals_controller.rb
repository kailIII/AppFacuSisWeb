class DiaSemanalsController < ApplicationController
  # GET /dia_semanals
  # GET /dia_semanals.json
  def index
    @dia_semanals = DiaSemanal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dia_semanals }
    end
  end

  # GET /dia_semanals/1
  # GET /dia_semanals/1.json
  def show
    @dia_semanal = DiaSemanal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dia_semanal }
    end
  end

  # GET /dia_semanals/new
  # GET /dia_semanals/new.json
  def new
    @dia_semanal = DiaSemanal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dia_semanal }
    end
  end

  # GET /dia_semanals/1/edit
  def edit
    @dia_semanal = DiaSemanal.find(params[:id])
  end

  # POST /dia_semanals
  # POST /dia_semanals.json
  def create
    @dia_semanal = DiaSemanal.new(params[:dia_semanal])

    respond_to do |format|
      if @dia_semanal.save
        format.html { redirect_to @dia_semanal, notice: 'Dia semanal was successfully created.' }
        format.json { render json: @dia_semanal, status: :created, location: @dia_semanal }
      else
        format.html { render action: "new" }
        format.json { render json: @dia_semanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dia_semanals/1
  # PUT /dia_semanals/1.json
  def update
    @dia_semanal = DiaSemanal.find(params[:id])

    respond_to do |format|
      if @dia_semanal.update_attributes(params[:dia_semanal])
        format.html { redirect_to @dia_semanal, notice: 'Dia semanal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dia_semanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dia_semanals/1
  # DELETE /dia_semanals/1.json
  def destroy
    @dia_semanal = DiaSemanal.find(params[:id])
    @dia_semanal.destroy

    respond_to do |format|
      format.html { redirect_to dia_semanals_url }
      format.json { head :no_content }
    end
  end
end
