class Api::V1::NumbersController < ApplicationController
  def single
    number = params[:number].to_i
    render json: { number: number, type: number.even? ? 'even' : 'odd' }
  end

  def batch
    numbers = params[:numbers].map(&:to_i)
    results = numbers.map { |n| { number: n, type: n.even? ? 'even' : 'odd' } }
    render json: results
  end
end
