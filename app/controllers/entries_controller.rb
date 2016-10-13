class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entry_params)
  end

  def edit
    @id = params[:id]
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to entry_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id]).destroy
    redirect_to entries_path
  end

####### PARAMS #####
private

  def entry_params
    params.require(:entry).permit(:title, :joke)
  end

end
