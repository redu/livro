class SubscriptionsController < ApplicationController
  respond_to :html

  def new
  end

  def create
    @subscription = Subscription.create(params[:subscription])
    flash[:can_download] = true if @subscription.valid?
    respond_with(@subscription, :location => root_path)
  end
end
