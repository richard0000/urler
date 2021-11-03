class LinksController < ApplicationController
  def create
    link = Link.create!(permitted_params)

    redirect_to "/link/#{link.slug}"
  end

  def show
    @link = Link.find_by_slug(params[:slug])
    render 'errors/404', status: 404 if @link.nil?
    @link.update!(times_visited: @link.times_visited + 1) unless @link.nil?
  end

  def redirect
    @link = Link.find_by_slug(params[:slug])
    render 'errors/404', status: 404 if @link.nil?

    redirect_to @link.url unless @link.nil?
  end

  private

  def permitted_params
    params.require(:link).permit(:url)
  end
end