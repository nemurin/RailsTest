class PeopleController < ApplicationController
  def index
    @msg='Person data.'
    @data= Person.all
  end
  def show
    @msg="Index data."
    @data=Person.find(params[:id])
  end
end
