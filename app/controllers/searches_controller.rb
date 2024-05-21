class SearchesController < ApplicationController
  def analytics
  @searches = Search.order(count: :desc)
  end

  def create
      @search = Search.create(search_params)
      redirect_to @search

  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:title, :content)
  end
end
