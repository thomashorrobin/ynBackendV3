class ApplePhonesController < ApplicationController
  before_action :set_apple_phone, only: [:show, :edit, :update, :destroy]

  # GET /apple_phones
  # GET /apple_phones.json
  def index
    @apple_phones = ApplePhone.all
  end

  # GET /apple_phones/1
  # GET /apple_phones/1.json
  def show
  end

  # GET /apple_phones/new
  def new
    @apple_phone = ApplePhone.new
  end

  # GET /apple_phones/1/edit
  def edit
  end

  # POST /apple_phones
  # POST /apple_phones.json
  def create
    @apple_phone = ApplePhone.new(apple_phone_params)

    respond_to do |format|
      if @apple_phone.save
        format.html { redirect_to @apple_phone, notice: 'Apple phone was successfully created.' }
        format.json { render :show, status: :created, location: @apple_phone }
      else
        format.html { render :new }
        format.json { render json: @apple_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apple_phones/1
  # PATCH/PUT /apple_phones/1.json
  def update
    respond_to do |format|
      if @apple_phone.update(apple_phone_params)
        format.html { redirect_to @apple_phone, notice: 'Apple phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @apple_phone }
      else
        format.html { render :edit }
        format.json { render json: @apple_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apple_phones/1
  # DELETE /apple_phones/1.json
  def destroy
    @apple_phone.destroy
    respond_to do |format|
      format.html { redirect_to apple_phones_url, notice: 'Apple phone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apple_phone
      @apple_phone = ApplePhone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apple_phone_params
      params.require(:apple_phone).permit(:City_id, :first_name, :last_name, :email, :device_token)
    end
end
