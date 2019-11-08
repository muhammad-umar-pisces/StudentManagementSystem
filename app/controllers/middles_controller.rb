class MiddlesController < ApplicationController
  before_action :set_middle, only: [:show, :edit, :update, :destroy]

  # GET /middles
  # GET /middles.json
  def index
    @middles = current_user.students.first.middle
  end

  # GET /middles/1
  # GET /middles/1.json
  def show
  end

  # GET /middles/new
  def new
    @middle = Middle.new
  end

  # GET /middles/1/edit
  def edit
  end

  # POST /middles
  # POST /middles.json
  def create
    @middle = Middle.new(middle_params)

    respond_to do |format|
      if @middle.save
        format.html { redirect_to @middle, notice: 'Middle was successfully created.' }
        format.json { render :show, status: :created, location: @middle }
      else
        format.html { render :new }
        format.json { render json: @middle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /middles/1
  # PATCH/PUT /middles/1.json
  def update
    respond_to do |format|
      if @middle.update(middle_params)
        format.html { redirect_to @middle, notice: 'Middle was successfully updated.' }
        format.json { render :show, status: :ok, location: @middle }
      else
        format.html { render :edit }
        format.json { render json: @middle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /middles/1
  # DELETE /middles/1.json
  def destroy
    @middle.destroy
    respond_to do |format|
      format.html { redirect_to middles_url, notice: 'Middle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_middle
      @middle = Middle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def middle_params
      params.require(:middle).permit(:Islamiat, :Pak_studies, :Math, :Science, :Arabic, :Urdu, :English, :student_id)
    end
end
