class CompanySummariesController < ApplicationController
  before_action :set_company_summary, only: [:show, :edit, :update, :destroy]

  # GET /company_summaries
  # GET /company_summaries.json
  def index
    @company_summaries = CompanySummary.all
  end

  # GET /company_summaries/1
  # GET /company_summaries/1.json
  def show
  end

  # GET /company_summaries/new
  def new
    @company_summary = CompanySummary.new
  end

  # GET /company_summaries/1/edit
  def edit
  end

  # POST /company_summaries
  # POST /company_summaries.json
  def create
    @company_summary = CompanySummary.new(company_summary_params)

    respond_to do |format|
      if @company_summary.save
        format.html { redirect_to @company_summary, notice: 'Company summary was successfully created.' }
        format.json { render :show, status: :created, location: @company_summary }
      else
        format.html { render :new }
        format.json { render json: @company_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_summaries/1
  # PATCH/PUT /company_summaries/1.json
  def update
    respond_to do |format|
      if @company_summary.update(company_summary_params)
        format.html { redirect_to @company_summary, notice: 'Company summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_summary }
      else
        format.html { render :edit }
        format.json { render json: @company_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_summaries/1
  # DELETE /company_summaries/1.json
  def destroy
    @company_summary.destroy
    respond_to do |format|
      format.html { redirect_to company_summaries_url, notice: 'Company summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_summary
      @company_summary = CompanySummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_summary_params
      params.require(:company_summary).permit(:ownership, :start_plan, :locations, :business_plan_id)
    end
end
