class QuotationsController < ApplicationController
  before_action :current_user, only: [:new, :create]
  before_action :authrize_user, only: [:new]
  before_action :set_quotation, only: [:show]
  before_action :get_products, only: [:new, :create]

  def show
  end

  def new
    @quotation ||= Quotation.new
    @quotation.user_product_subscription ||= UserProductSubscription.new
    @quotation.user_product_service ||= UserProductService.new
    @quotation.user_product_good ||= UserProductGood.new
  end

  def create
    @quotation = Quotation.create(quotation_params)
    respond_to do |format|
      if @quotation.save
        format.html {redirect_to quotation_path(u_id: @quotation.u_id), 
          notice: 'Please Add products to get Quotations'}
      else
        format.html {render :new}
      end
    end
  end

  private

  def set_quotation
    @quotation ||= Quotation.find_by(u_id: params[:u_id])
  end

  def get_products
    @subscriptions ||= Subscription.all
    @services ||= Service.all
    @goods ||= Good.all
  end

  def quotation_params 
    params.require(:quotation).permit(:user_id, 
      user_product_subscription_attributes: [:product_id, :start_date, :end_date],
      user_product_service_attributes: [:product_id, :recurring_on, :start_time, :end_time, :qty], 
      user_product_good_attributes: [:product_id, :qty])
  end
end
