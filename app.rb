require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    squared = params[:number].to_i ** 2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}\n"*number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      result = params[:number1].to_i + params[:number2].to_i
      "#{result}"
    elsif params[:operation] == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
      "#{result}"
    elsif params[:operation] == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
      "#{result}"
    elsif params[:operation] == "divide"
      result = params[:number1].to_i / params[:number2].to_i
      "#{result}"
    end
  end

end
