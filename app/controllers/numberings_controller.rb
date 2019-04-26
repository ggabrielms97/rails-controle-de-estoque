class NumberingsController < ApplicationController
  before_action :set_numbering, only: [:show, :edit, :update, :destroy]

  # GET /numberings
  # GET /numberings.json
  def index
    @numberings = Numbering.all
  end

  # GET /numberings/1
  # GET /numberings/1.json
  def show
  end

  # GET /numberings/new
  def new
    @numbering = Numbering.new
  end

  # GET /numberings/1/edit
  def edit
  end

  # POST /numberings
  # POST /numberings.json
  def create
    @numbering = Numbering.new(numbering_params)

    respond_to do |format|
      if @numbering.save
        format.html { redirect_to numberings_path, notice: 'Numbering was successfully created.' }
        format.json { render :show, status: :created, location: @numbering }
      else
        format.html { render :new }
        format.json { render json: @numbering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numberings/1
  # PATCH/PUT /numberings/1.json
  def update
    respond_to do |format|
      if @numbering.update(numbering_params)
        format.html { redirect_to @numbering, notice: 'Numbering was successfully updated.' }
        format.json { render :show, status: :ok, location: @numbering }
      else
        format.html { render :edit }
        format.json { render json: @numbering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numberings/1
  # DELETE /numberings/1.json
  def destroy
    @numbering.destroy
    respond_to do |format|
      format.html { redirect_to numberings_url, notice: 'Numbering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numbering
      @numbering = Numbering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def numbering_params
      params.require(:numbering).permit(:number)
    end
end
