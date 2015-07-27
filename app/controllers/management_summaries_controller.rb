class ManagementSummariesController < ApplicationController
  before_action :set_management_summary, only: [:show, :edit, :update, :destroy]

  # GET /management_summaries
  # GET /management_summaries.json
  def index
    @management_summaries = ManagementSummary.all
  end

  # GET /management_summaries/1
  # GET /management_summaries/1.json
  def show
  end

  # GET /management_summaries/new
  def new
    @management_summary = ManagementSummary.new
  end

  # GET /management_summaries/1/edit
  def edit
  end

  # POST /management_summaries
  # POST /management_summaries.json
  def create
    @management_summary = ManagementSummary.new(management_summary_params)

    respond_to do |format|
      if @management_summary.save
        format.html { redirect_to @management_summary, notice: 'Management summary was successfully created.' }
        format.json { render :show, status: :created, location: @management_summary }
      else
        format.html { render :new }
        format.json { render json: @management_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /management_summaries/1
  # PATCH/PUT /management_summaries/1.json
  def update
    respond_to do |format|
      if @management_summary.update(management_summary_params)
        format.html { redirect_to @management_summary, notice: 'Management summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @management_summary }
      else
        format.html { render :edit }
        format.json { render json: @management_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /management_summaries/1
  # DELETE /management_summaries/1.json
  def destroy
    @management_summary.destroy
    respond_to do |format|
      format.html { redirect_to management_summaries_url, notice: 'Management summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_summary
      @management_summary = ManagementSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def management_summary_params
      params.require(:management_summary).permit(:organization_structure, :management_team, :team_gaps, :personnel_plan, :business_plan_id)
    end
end
