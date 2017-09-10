class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  #Check to see if user has session. References application_controller method
  before_filter :signed_in_user_and_admin, :only => [:create, :edit, :update, :destroy]

  def index
    @entries = Entry.all
    @title = "The Ultimate Roth IRA Guide | FatRoth"
    @description = "FathRoth is the central source for Roth IRA eligibility, income requirements, and rules. Free guides and expert advice."
  end

  # The before_action filter is called with set_entry when looking at params
  def show
    @title = "#{@entry.title} | FatRoth"
    @description = @entry.description
  end

  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to root_url, :notice => "Entry was successfully created"
    else
      render 'new'
    end

  end

  def edit
  end

  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated.'
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_url, notice: 'Entry was successfully destroyed.'
  end

  private
    # We are finding entries now by the slug and not the id. It would
    # be @entry = Entry.find(params[:id]) without using slugs.
    def set_entry
      @entry = Entry.find_by_slug( params[:id] )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:title, :body, :description, :labels, :is_project, :is_paper, :slug)
    end
end
