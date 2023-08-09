class PaymentsController < ApplicationController
    # before_action :authorized
    def index
        payments = Payment.all
        render json: payments
    end

    def show
        payment = Payment.find_by(id: params[:id])
        if payment
            render json: payment, except: [:created_at, :updated_at], status: :ok
        else
            render json: {error: "Payment record not found"}, status: :not_found
        end
    end

    def create
        payment = Payment.create(payment_params)
        render json: payment, except: [:created_at, :updated_at], status: :created
        
    end

    def update
        payment = Payment.find_by(status: params[:status])
        payment.update(update_params)
        render json: payment
    end

    private

    def payment_params
        params.permit(:order_item_id, :amount, :payment_method, :status, :user_id)
    end

    def update_params
        params.permit(:status)
    end
end
