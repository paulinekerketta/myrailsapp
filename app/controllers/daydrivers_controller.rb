class DaydriversController < ApplicationController
  before_action :set_daydriver, only: [:show, :edit, :update, :destroy]

  # GET /daydrivers
  # GET /daydrivers.json
  def index
    @daydrivers = Daydriver.all
  end

  # GET /daydrivers/1
  # GET /daydrivers/1.json
  def show
  end

  # GET /daydrivers/new
  def new
    @daydriver = Daydriver.new
  end

  # GET /daydrivers/1/edit
  def edit
  end

  # POST /daydrivers
  # POST /daydrivers.json
  def create
    @daydriver = Daydriver.new(daydriver_params)

    respond_to do |format|
      if @daydriver.save
        format.html { redirect_to @daydriver, notice: 'Daydriver was successfully created.' }
        format.json { render :show, status: :created, location: @daydriver }
      else
        format.html { render :new }
        format.json { render json: @daydriver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daydrivers/1
  # PATCH/PUT /daydrivers/1.json
  def update
    respond_to do |format|
      if @daydriver.update(daydriver_params)
        format.html { redirect_to @daydriver, notice: 'Daydriver was successfully updated.' }
        format.json { render :show, status: :ok, location: @daydriver }
      else
        format.html { render :edit }
        format.json { render json: @daydriver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daydrivers/1
  # DELETE /daydrivers/1.json
  def destroy
    @daydriver.destroy
    respond_to do |format|
      format.html { redirect_to daydrivers_url, notice: 'Daydriver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daydriver
      @daydriver = Daydriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daydriver_params
      params.require(:daydriver).permit(:name, :phone, :noofdelivery, :chargerate, :extrapay, :dirvertotal)
    end
end
