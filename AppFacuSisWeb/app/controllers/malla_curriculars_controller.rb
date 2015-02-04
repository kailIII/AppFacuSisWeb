class MallaCurricularsController < ApplicationController
  # GET /malla_curriculars
  # GET /malla_curriculars.json
  def index
    @malla_curriculars = MallaCurricular.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @malla_curriculars }
    end
  end

  # GET /malla_curriculars/1
  # GET /malla_curriculars/1.json
  def show
    @malla_curricular = MallaCurricular.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malla_curricular }
    end
  end

  # GET /malla_curriculars/new
  # GET /malla_curriculars/new.json
  def new
    @malla_curricular = MallaCurricular.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malla_curricular }
    end
  end

  # GET /malla_curriculars/1/edit
  def edit
    @malla_curricular = MallaCurricular.find(params[:id])
  end

  # POST /malla_curriculars
  # POST /malla_curriculars.json
  def create
    @malla_curricular = MallaCurricular.new(params[:malla_curricular])

    respond_to do |format|
      if @malla_curricular.save
        format.html { redirect_to @malla_curricular, notice: 'Malla curricular was successfully created.' }
        format.json { render json: @malla_curricular, status: :created, location: @malla_curricular }
      else
        format.html { render action: "new" }
        format.json { render json: @malla_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malla_curriculars/1
  # PUT /malla_curriculars/1.json
  def update
    @malla_curricular = MallaCurricular.find(params[:id])

    respond_to do |format|
      if @malla_curricular.update_attributes(params[:malla_curricular])
        format.html { redirect_to @malla_curricular, notice: 'Malla curricular was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malla_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malla_curriculars/1
  # DELETE /malla_curriculars/1.json
  def destroy
    @malla_curricular = MallaCurricular.find(params[:id])
    @malla_curricular.destroy

    respond_to do |format|
      format.html { redirect_to malla_curriculars_url }
      format.json { head :no_content }
    end
  end
end
