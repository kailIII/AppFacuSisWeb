class PlanCurricularsController < ApplicationController
  # GET /plan_curriculars
  # GET /plan_curriculars.json
  def index
    @plan_curriculars = PlanCurricular.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_curriculars }
    end
  end

  # GET /plan_curriculars/1
  # GET /plan_curriculars/1.json
  def show
    @plan_curricular = PlanCurricular.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_curricular }
    end
  end

  # GET /plan_curriculars/new
  # GET /plan_curriculars/new.json
  def new
    @plan_curricular = PlanCurricular.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_curricular }
    end
  end

  # GET /plan_curriculars/1/edit
  def edit
    @plan_curricular = PlanCurricular.find(params[:id])
  end

  # POST /plan_curriculars
  # POST /plan_curriculars.json
  def create
    @plan_curricular = PlanCurricular.new(params[:plan_curricular])

    respond_to do |format|
      if @plan_curricular.save
        format.html { redirect_to @plan_curricular, notice: 'Plan curricular was successfully created.' }
        format.json { render json: @plan_curricular, status: :created, location: @plan_curricular }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_curriculars/1
  # PUT /plan_curriculars/1.json
  def update
    @plan_curricular = PlanCurricular.find(params[:id])

    respond_to do |format|
      if @plan_curricular.update_attributes(params[:plan_curricular])
        format.html { redirect_to @plan_curricular, notice: 'Plan curricular was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_curriculars/1
  # DELETE /plan_curriculars/1.json
  def destroy
    @plan_curricular = PlanCurricular.find(params[:id])
    @plan_curricular.destroy

    respond_to do |format|
      format.html { redirect_to plan_curriculars_url }
      format.json { head :no_content }
    end
  end
end
