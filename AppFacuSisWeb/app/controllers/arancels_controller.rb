class ArancelsController < ApplicationController
  # GET /arancels
  # GET /arancels.json
  def index
    @arancels = Arancel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arancels }
    end
  end

  # GET /arancels/1
  # GET /arancels/1.json
  def show
    @arancel = Arancel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arancel }
    end
  end

  # GET /arancels/new
  # GET /arancels/new.json
  def new
    @arancel = Arancel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arancel }
    end
  end

  # GET /arancels/1/edit
  def edit
    @arancel = Arancel.find(params[:id])
  end

  # POST /arancels
  # POST /arancels.json
  def create
    @arancel = Arancel.new(params[:arancel])

    respond_to do |format|
      if @arancel.save
        format.html { redirect_to @arancel, notice: 'Arancel was successfully created.' }
        format.json { render json: @arancel, status: :created, location: @arancel }
      else
        format.html { render action: "new" }
        format.json { render json: @arancel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arancels/1
  # PUT /arancels/1.json
  def update
    @arancel = Arancel.find(params[:id])

    respond_to do |format|
      if @arancel.update_attributes(params[:arancel])
        format.html { redirect_to @arancel, notice: 'Arancel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arancel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arancels/1
  # DELETE /arancels/1.json
  def destroy
    @arancel = Arancel.find(params[:id])
    @arancel.destroy

    respond_to do |format|
      format.html { redirect_to arancels_url }
      format.json { head :no_content }
    end
  end
end
