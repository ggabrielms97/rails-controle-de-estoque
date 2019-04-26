class PeopleCategoriesController < ApplicationController
  before_action :set_people_category, only: [:show, :edit, :update, :destroy]

  # GET /people_categories
  # GET /people_categories.json
  def index
    @people_categories = PeopleCategory.all
  end

  # GET /people_categories/1
  # GET /people_categories/1.json
  def show
  end

  # GET /people_categories/new
  def new
    @people_category = PeopleCategory.new
  end

  # GET /people_categories/1/edit
  def edit
  end

  # POST /people_categories
  # POST /people_categories.json
  def create
    @people_category = PeopleCategory.new(people_category_params)

    respond_to do |format|
      if @people_category.save
        format.html { redirect_to people_categories_path, notice: 'People category was successfully created.' }
        format.json { render :show, status: :created, location: @people_category }
      else
        format.html { render :new }
        format.json { render json: @people_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_categories/1
  # PATCH/PUT /people_categories/1.json
  def update
    respond_to do |format|
      if @people_category.update(people_category_params)
        format.html { redirect_to people_categories_path, notice: 'People category was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_category }
      else
        format.html { render :edit }
        format.json { render json: @people_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_categories/1
  # DELETE /people_categories/1.json
  def destroy
    @people_category.destroy
    respond_to do |format|
      format.html { redirect_to people_categories_url, notice: 'People category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_category
      @people_category = PeopleCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_category_params
      params.require(:people_category).permit(:name, :status)
    end
end
