class ResourcePagesController < ApplicationController
  before_action :set_resource_page, only: [:show, :edit, :update, :destroy]

  # GET /resource_pages
  # GET /resource_pages.json
  def index
    @resource_pages = ResourcePage.all
  end

  # GET /resource_pages/1
  # GET /resource_pages/1.json
  def show
  end

  # GET /resource_pages/new
  def new
    @resource_page = ResourcePage.new
  end

  # GET /resource_pages/1/edit
  def edit
  end

  # POST /resource_pages
  # POST /resource_pages.json
  def create
    @resource_page = ResourcePage.new(resource_page_params)

    respond_to do |format|
      if @resource_page.save
        format.html { redirect_to @resource_page, notice: 'Resource page was successfully created.' }
        format.json { render :show, status: :created, location: @resource_page }
      else
        format.html { render :new }
        format.json { render json: @resource_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_pages/1
  # PATCH/PUT /resource_pages/1.json
  def update
    respond_to do |format|
      if @resource_page.update(resource_page_params)
        format.html { redirect_to @resource_page, notice: 'Resource page was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_page }
      else
        format.html { render :edit }
        format.json { render json: @resource_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_pages/1
  # DELETE /resource_pages/1.json
  def destroy
    @resource_page.destroy
    respond_to do |format|
      format.html { redirect_to resource_pages_url, notice: 'Resource page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @resource_page.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_page
      @resource_page = ResourcePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_page_params
      params.require(:resource_page).permit(:title, :description)
    end
end
