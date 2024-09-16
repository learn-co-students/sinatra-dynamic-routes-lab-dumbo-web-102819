require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_f**2).to_s
  end

  get '/say/:number/:phrase' do
    s = ''
    params[:number].to_i.times do
      s = s + params[:phrase]
    end
    s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = ''
    params.each{|k, value|
      str = str + ' ' + value
    }
    str.strip + '.'
  end
  

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      val = params[:number1].to_f + params[:number2].to_f
    when 'subtract'
      val = params[:number1].to_f - params[:number2].to_f
    when 'multiply'
      val = params[:number1].to_f * params[:number2].to_f
    when 'divide'
      val = params[:number1].to_f / params[:number2].to_f
    end
    val.to_s
  end
end