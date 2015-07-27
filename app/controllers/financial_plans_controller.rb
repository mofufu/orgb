class FinancialPlansController < ApplicationController
  before_action :set_financial_plan, only: [:show, :edit, :update, :destroy]

  # GET /financial_plans
  # GET /financial_plans.json
  def index
    @financial_plans = FinancialPlan.all
  end

  # GET /financial_plans/1
  # GET /financial_plans/1.json
  def show
  end

  # GET /financial_plans/new
  def new
    @financial_plan = FinancialPlan.new
  end

  # GET /financial_plans/1/edit
  def edit
  end

  # POST /financial_plans
  # POST /financial_plans.json
  def create
    @financial_plan = FinancialPlan.new(financial_plan_params)

    respond_to do |format|
      if @financial_plan.save
        format.html { redirect_to @financial_plan, notice: 'Financial plan was successfully created.' }
        format.json { render :show, status: :created, location: @financial_plan }
      else
        format.html { render :new }
        format.json { render json: @financial_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_plans/1
  # PATCH/PUT /financial_plans/1.json
  def update
    respond_to do |format|
      if @financial_plan.update(financial_plan_params)
        format.html { redirect_to @financial_plan, notice: 'Financial plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_plan }
      else
        format.html { render :edit }
        format.json { render json: @financial_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_plans/1
  # DELETE /financial_plans/1.json
  def destroy
    @financial_plan.destroy
    respond_to do |format|
      format.html { redirect_to financial_plans_url, notice: 'Financial plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_plan
      @financial_plan = FinancialPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_plan_params
      params.require(:financial_plan).permit(:important_assumptions, :key_financial_indicators, :projected_profit_and_loss, :projected_cash_flow, :projected_balance_sheet, :long_term_financial_plan, :business_plan_id)
    end
end
