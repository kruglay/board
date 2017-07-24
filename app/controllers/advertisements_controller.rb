class AdvertisementsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  # GET /advertisemnts/new
  def new
    @adv = current_user.advertisements.build;
  end

  # POST /advertisements/
  def create
    @adv = current_user.advertisements.build(adv_params)
    @adv.created_at = DateTime.now
    @adv.updated_at = DateTime.now
    if @adv.save
      redirect_to user_path, notice: t('.success')
    else
      render :new
    end
  end

  # GET /advertisements/
  def index
    # TODO change for oreder and limit per page
    @advs = Advertisement.all
  end

  # PUT/PATCH /advertisements/update
  def update

  end

  # DELETE /advertisements/:id
  def destroy

  end

  # GET /advertisements/:id/edit
  def edit

  end

  private
    def adv_params
      params.require(:advertisment).permit(
        :user,
        :title,
        :status,
        :product_type,
        :ad_type,
        :game_type,
        :game,
        :sum,
        :text,
        :services,
        :rating_to_employee,
        :rating_to_user,
        :mention_to_employee,
        :mention_to_user,
        :employee,
      )
    end
end
