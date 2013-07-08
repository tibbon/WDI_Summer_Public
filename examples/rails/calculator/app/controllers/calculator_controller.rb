class CalculatorController < ApplicationController
  def calc
    x = params[:x].to_f
    y = params[:y].to_f
    @answer = case params[:operator]
    when "times"
      x * y
    when "minus"
      x - y
    when "divide"
      x / y
    when "plus"
      x + y
    end
  end
end