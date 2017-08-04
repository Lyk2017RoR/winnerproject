class ProfilesController < ApplicationController
    before_action :find_profile, only: %i[edit show update destroy]

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user

        if @profile.save
            redirect_to profile_path(@profile)
        else
            render :edit
        end
    end

    def edit; end

    def update
        if @profile.update(profile_params)
            redirect_to profile_path(@profile)
        else
            render 'edit'
        end
    end

    def show
        @profile = Profile.where params[:id]
    end

    private 

    def find_profile
        @profile = Profile.find params[:id]
    end

    def profile_params
    params.require(:profile).permit(:first_name, :last_name, :phone, :birth_date, :province, :adress)
  end
end
