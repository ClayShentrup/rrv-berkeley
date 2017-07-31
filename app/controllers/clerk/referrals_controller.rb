class Clerk::ReferralsController < ApplicationController
  before_action :set_referral, only: %i[show edit update destroy]

  respond_to :html

  def index
    @referrals = Referral.all
    respond_with(@referrals)
  end

  def show
    respond_with(:clerk, @referral)
  end

  def new
    @referral = Referral.new
    respond_with(:clerk, @referral)
  end

  def edit; end

  def create
    @referral = Referral.new(referral_params)
    @referral.save
    respond_with(:clerk, @referral)
  end

  def update
    @referral.update(referral_params)
    respond_with(:clerk, @referral)
  end

  def destroy
    @referral.destroy
    respond_with(:clerk, @referral)
  end

  private

  def set_referral
    @referral = Referral.find(params[:id])
  end

  def referral_params
    params.require(:referral).permit(
      :agenda_item_number,
      :completed_on,
      :date_started,
      :department_id,
      :first_year_rank,
      :meeting_date,
      :notes,
      :prioritization_year,
      :recommendation,
      :referral_type,
      :sponsors,
      :staff_time_required,
      :title,
      :tracking_number
    )
  end
end
