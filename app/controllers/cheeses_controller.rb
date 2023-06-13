class CheesesController < ApplicationController
    def index
        cheeses = Cheese.all 
        render json: cheeses
    end

    def order
        cheeses = Cheese.order(price: :desc)
        render json: cheeses
    end

    def limit
        cheeses = Cheese.limit(1)
        render json: cheeses
    end
end
