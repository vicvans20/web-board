require 'sinatra'
require 'rubygems'
require 'json'

get '/' do
	erb :application, :layout => false do
		erb :index
	end
end

get '/simple_sum' do
	erb :application, :layout => false do
		erb :sum
	end
end

post '/sum' do
	result = params[:num1].to_i+params[:num2].to_i
	status = result.nil? ? false : true
	content_type :json
  { result: result, success: status }.to_json
end