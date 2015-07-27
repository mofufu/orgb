class ProductandservicesController < ApplicationController
  before_action :set_productandservice, only: [:show, :edit, :update, :destroy]

  # GET /productandservices
  # GET /productandservices.json
  def index
    @productandservices = Productandservice.all
  end

  # GET /productandservices/1
  # GET /productandservices/1.json
  def show
  end

  # GET /productandservices/new
  def new
    @productandservice = Productandservice.new
  end

  # GET /productandservices/1/edit
  def edit
  end

  # POST /productandservices
  # POST /productandservices.json
  def create
    @productandservice = Productandservice.new(productandservice_params)

    respond_to do |format|
      if @productandservice.save
        format.html { redirect_to @productandservice, notice: 'Productandservice was successfully created.' }
        format.json { render :show, status: :created, location: @productandservice }
      else
        format.html { render :new }
        format.json { render json: @productandservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productandservices/1
  # PATCH/PUT /productandservices/1.json
  def update
    respond_to do |format|
      if @productandservice.update(productandservice_params)
        format.html { redirect_to @productandservice, notice: 'Productandservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @productandservice }
      else
        format.html { render :edit }
        format.json { render json: @productandservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productandservices/1
  # DELETE /productandservices/1.json
  def destroy
    @productandservice.destroy
    respond_to do |format|
      format.html { redirect_to productandservices_url, notice: 'Productandservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productandservice
      @productandservice = Productandservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productandservice_params
      params.require(:productandservice).permit(:description, :sourcing_and_fulfillment, :technology_used, :expansion_plans, :business_plan_id)
    end
end
