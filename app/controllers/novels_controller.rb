class NovelsController < ApplicationController
  before_action :set_novel, only: [:show, :edit, :update, :destroy]

  # GET /novels
  # GET /novels.json
  def index
    @novels = Novel.all
  end

  # GET /novels/new
  def new
    @novel = Novel.new
  end

  # POST /novels
  # POST /novels.json
  def create
    @novel = Novel.new(novel_params)

    respond_to do |format|
      if @novel.save
        format.html { render :index, notice: 'Novel was successfully created.' }
        format.json { render :show, status: :created, location: @novel }
      else
        format.html { render :new }
        format.json { render json: @novel.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novel
      @novel = Novel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novel_params
      params[:novel]
    end
end
