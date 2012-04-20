class ProfilesController < ApplicationController
  respond_to :html

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new

    respond_to do |format|
      format.html
    end
  end

  def create 
    @profile = Profile.new(params[:profile])

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was updated successfully.' }
      else
        format.html { render action: "edit" }
      end
    end
  end 

  def destroy
    @profile = Deal.find(params[:id])
    @profile.destroy

    respond_to do |format|
          format.html { redirect_to profiles_url }
        end
    end
end
