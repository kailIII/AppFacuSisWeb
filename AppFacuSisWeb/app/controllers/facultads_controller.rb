class FacultadsController < ApplicationController
  # GET /facultads
  # GET /facultads.json
  def index
    @facultads = Facultad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facultads }
    end
  end

  # GET /facultads/1
  # GET /facultads/1.json
  def show
    @facultad = Facultad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facultad }
    end
  end

  # GET /facultads/new
  # GET /facultads/new.json
  def new
    @facultad = Facultad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facultad }
    end
  end

  # GET /facultads/1/edit
  def edit
    @facultad = Facultad.find(params[:id])
  end

  # POST /facultads
  # POST /facultads.json
  def create
    @facultad = Facultad.new(params[:facultad])

    respond_to do |format|
      if @facultad.save
        format.html { redirect_to @facultad, notice: 'Facultad was successfully created.' }
        format.json { render json: @facultad, status: :created, location: @facultad }
      else
        format.html { render action: "new" }
        format.json { render json: @facultad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facultads/1
  # PUT /facultads/1.json
  def update
    @facultad = Facultad.find(params[:id])

    respond_to do |format|
      if @facultad.update_attributes(params[:facultad])
        format.html { redirect_to @facultad, notice: 'Facultad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facultad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facultads/1
  # DELETE /facultads/1.json
  def destroy
    @facultad = Facultad.find(params[:id])
    @facultad.destroy

    respond_to do |format|
      format.html { redirect_to facultads_url }
      format.json { head :no_content }
    end
  end
end
