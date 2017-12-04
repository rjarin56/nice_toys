class ChargesController < ApplicationController
  def new
    @current_amount = params[:amount]
  end

  def create
    # Amount in cents
    @grand_total = (params[:amount] * 100).to_i
    stripe
  end

  def stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount:      params[:amount].to_i,
      description: 'Customer Payment',
      currency:    'cad'
    )
  end

  def stripe_error
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  # def create_customer
  #   @customer = Customer.create()
  # end
  #
  # def create_order
  # end
  #
  # def create_line_item
  # end
end
