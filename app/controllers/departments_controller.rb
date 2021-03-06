class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy, :contacts]

  # GET /departments
  # GET /departments.json
  def index
    @q = Department.ransack(params[:q])
    @departments = @q.result.page(params[:page])
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
  end

  # GET /departments/new
  def new
    @department = Department.new
    @companies = Company.all
    @departments = []
  end

  # GET /departments/1/edit
  def edit
    @companies = Company.all
    if @department.company
      @departments = @department.company.departments 
    else
      @departments = []
    end
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)
    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        @companies = Company.all
        @departments = []
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        @companies = Company.all
        @departments = []
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def contacts
    @contacts = @department.contacts
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name, :company_id, :parent_id)
    end
end
