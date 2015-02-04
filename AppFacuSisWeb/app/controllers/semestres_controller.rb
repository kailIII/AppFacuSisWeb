class SemestresController < ApplicationController
  # GET /semestres
  # GET /semestres.json
  def index
    @semestres = Semestre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @semestres }
    end
  end

  # GET /semestres/1
  # GET /semestres/1.json
  def show
    @semestre = Semestre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @semestre }
    end
  end

  # GET /semestres/new
  # GET /semestres/new.json
  def new
    @semestre = Semestre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @semestre }
    end
  end

  # GET /semestres/1/edit
  def edit
    @semestre = Semestre.find(params[:id])
  end

  # POST /semestres
  # POST /semestres.json
  def create
    @semestre = Semestre.new(params[:semestre])

    respond_to do |format|
      if @semestre.save
        format.html { redirect_to @semestre, notice: 'Semestre was successfully created.' }
        format.json { render json: @semestre, status: :created, location: @semestre }
      else
        format.html { render action: "new" }
        format.json { render json: @semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /semestres/1
  # PUT /semestres/1.json
  def update
    @semestre = Semestre.find(params[:id])

    respond_to do |format|
      if @semestre.update_attributes(params[:semestre])
        format.html { redirect_to @semestre, notice: 'Semestre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semestres/1
  # DELETE /semestres/1.json
  def destroy
    @semestre = Semestre.find(params[:id])
    @semestre.destroy

    respond_to do |format|
      format.html { redirect_to semestres_url }
      format.json { head :no_content }
    end
  end
end
