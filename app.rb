require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:num' do
    @number = params[:num].to_i
    "#{@number*@number}"
  end

  get '/say/:num/:phrase' do
    @number = params[:num].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    case @operation
      when 'add'
        "#{params[:num1].to_i + params[:num2].to_i}"
      when 'subtract'
        "#{params[:num1].to_i - params[:num2].to_i}"
      when 'multiply'
        "#{params[:num1].to_i * params[:num2].to_i}"
      when 'divide'
        "#{params[:num1].to_i / params[:num2].to_i}"
    end
  end
end