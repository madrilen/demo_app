class MiscopostsController < ApplicationController
  before_action :set_miscopost, only: [:show, :edit, :update, :destroy]

  # GET /miscoposts
  # GET /miscoposts.json
  def index
    @miscoposts = Miscopost.all
  end

  # GET /miscoposts/1
  # GET /miscoposts/1.json
  def show
  end

  # GET /miscoposts/new
  def new
    @miscopost = Miscopost.new
  end

  # GET /miscoposts/1/edit
  def edit
  end

  # POST /miscoposts
  # POST /miscoposts.json
  def create
    @miscopost = Miscopost.new(miscopost_params)

    respond_to do |format|
      if @miscopost.save
        format.html { redirect_to @miscopost, notice: 'Miscopost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @miscopost }
      else
        format.html { render action: 'new' }
        format.json { render json: @miscopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miscoposts/1
  # PATCH/PUT /miscoposts/1.json
  def update
    respond_to do |format|
      if @miscopost.update(miscopost_params)
        format.html { redirect_to @miscopost, notice: 'Miscopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @miscopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscoposts/1
  # DELETE /miscoposts/1.json
  def destroy
    @miscopost.destroy
    respond_to do |format|
      format.html { redirect_to miscoposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miscopost
      @miscopost = Miscopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miscopost_params
      params.require(:miscopost).permit(:content, :user_id)
    end
end
