class BuyerProfilesController < ApplicationController
  before_action :set_buyer_profile, only: [:show, :edit, :update, :destroy]

  # GET /buyer_profiles
  # GET /buyer_profiles.json
  def index
    @buyer_profiles = BuyerProfile.all
  end

  # GET /buyer_profiles/1
  # GET /buyer_profiles/1.json
  def show
  end

  # GET /buyer_profiles/new
  def new
    @buyer_profile = BuyerProfile.new
  end

  # GET /buyer_profiles/1/edit
  def edit
  end

  # POST /buyer_profiles
  # POST /buyer_profiles.json
  def create
    @buyer_profile = BuyerProfile.new(buyer_profile_params)

    respond_to do |format|
      if @buyer_profile.save
        format.html { redirect_to @buyer_profile, notice: 'Buyer profile was successfully created.' }
        format.json { render :show, status: :created, location: @buyer_profile }
      else
        format.html { render :new }
        format.json { render json: @buyer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyer_profiles/1
  # PATCH/PUT /buyer_profiles/1.json
  def update
    respond_to do |format|
      if @buyer_profile.update(buyer_profile_params)
        format.html { redirect_to @buyer_profile, notice: 'Buyer profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer_profile }
      else
        format.html { render :edit }
        format.json { render json: @buyer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyer_profiles/1
  # DELETE /buyer_profiles/1.json
  def destroy
    @buyer_profile.destroy
    respond_to do |format|
      format.html { redirect_to buyer_profiles_url, notice: 'Buyer profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer_profile
      @buyer_profile = BuyerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_profile_params
      params.require(:buyer_profile).permit(:name, :description, :buyer_goals, :target_features, :potential_hesitations, :acquisition_location)
    end
end
