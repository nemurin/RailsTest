class BlogpostsController < ApplicationController
  layout 'blogposts'
  def index
    @data = Blogpost.all.order('created_at desc')
  end

  def add
    @blogpost = Blogpost.new
    @genres = Bloggenre.all
    if request.post? then
      @blogpost = Blogpost.create blogposts_params
      redirect_to '/blogposts'
    end
  end

  def edit
    @blogpost = BLogpost.find params[:id]
    @genres = Bloggenre.all
    if request.patch? then
      @blogpost.update blogposts_params
      redirect_to '/blogposts'
    end
  end

  def delete
    @blogpost = Blogpost.find(params[:id])
    if request.post? then
      @blogpost.destroy
      redirect_to '/blogposts'
    end
  end
  private
  def bloggenre_params
    params.require(:bloggenre).permit(:name,:memo)
  end
end
