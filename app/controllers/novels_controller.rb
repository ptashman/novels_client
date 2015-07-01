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
    render :new unless @novel.save rescue redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novel
      @novel = Novel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novel_params
      params.permit(:title, :description, :author_id)
    end
end
