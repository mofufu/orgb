class StrategyandImplementationsController < ApplicationController
  before_action :set_strategyand_implementation, only: [:show, :edit, :update, :destroy]

  # GET /strategyand_implementations
  # GET /strategyand_implementations.json
  def index
    @strategyand_implementations = StrategyandImplementation.all
  end

  # GET /strategyand_implementations/1
  # GET /strategyand_implementations/1.json
  def show
  end

  # GET /strategyand_implementations/new
  def new
    @strategyand_implementation = StrategyandImplementation.new
  end

  # GET /strategyand_implementations/1/edit
  def edit
  end

  # POST /strategyand_implementations
  # POST /strategyand_implementations.json
  def create
    @strategyand_implementation = StrategyandImplementation.new(strategyand_implementation_params)

    respond_to do |format|
      if @strategyand_implementation.save
        format.html { redirect_to @strategyand_implementation, notice: 'Strategyand implementation was successfully created.' }
        format.json { render :show, status: :created, location: @strategyand_implementation }
      else
        format.html { render :new }
        format.json { render json: @strategyand_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strategyand_implementations/1
  # PATCH/PUT /strategyand_implementations/1.json
  def update
    respond_to do |format|
      if @strategyand_implementation.update(strategyand_implementation_params)
        format.html { redirect_to @strategyand_implementation, notice: 'Strategyand implementation was successfully updated.' }
        format.json { render :show, status: :ok, location: @strategyand_implementation }
      else
        format.html { render :edit }
        format.json { render json: @strategyand_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strategyand_implementations/1
  # DELETE /strategyand_implementations/1.json
  def destroy
    @strategyand_implementation.destroy
    respond_to do |format|
      format.html { redirect_to strategyand_implementations_url, notice: 'Strategyand implementation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strategyand_implementation
      @strategyand_implementation = StrategyandImplementation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strategyand_implementation_params
      params.require(:strategyand_implementation).permit(:value_proposition, :competitive_advantage, :positioning_statements, :pricing_strategy, :general_promotion_strategy, :distribution_patterns, :sales_strategy, :sales_programs, :strategic_partnerships, :milestones, :business_plan_id)
    end
end
