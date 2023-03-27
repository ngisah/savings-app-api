class TransactionsController<ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        transactions = Transaction.all
        render json: transactions
    end
end