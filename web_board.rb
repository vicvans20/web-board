require 'rubygems'
require 'json'

require 'sinatra/base'

class WebBoard < Sinatra::Base

	@@key = false

	# -----------------------------------
	# Index
	get '/' do
		@@key = false
		erb :index
	end
	# -----------------------------------

	# -----------------------------------
	# Sum between two numbers
	get '/simple_sum' do
		erb :sum
	end

	post '/sum' do
		result = params[:num1].to_i+params[:num2].to_i
		status = result.nil? ? false : true
		content_type :json
	  { result: result, success: status }.to_json
	end
	# -----------------------------------

	# -----------------------------------
	# Kiloconverter
	get '/kiloverter' do
		erb :kiloverter
	end

	post '/convert' do
		puts params
		val = params[:watsValue].to_f
		op = params[:type]
		result = (op == "w" ? val*1000 : val*1.3410220888)
		content_type :json
		{ result: result, success: true }.to_json
	end
	# -----------------------------------

	# -----------------------------------
	# Demo for geocomplete
	get '/geocomplete_demo' do
		erb :geocomplete_demo
	end
	# -----------------------------------

	# -----------------------------------
	# Flow control with conditionals on a simple laberynth like view
	get '/paths/:id' do
		erb :path_layout do
			path = params[:id].to_i
			case path
			when 0
				erb :path_0
			when 11
				erb :path_1
			when 22
				erb :path_2
			when 53
				erb :path_3
			when 25
				erb :path_4
			when 90
				erb :path_5
			when 55
				erb :path_6
			when 190
				erb :path_7
			when 2450
				erb :path_f
			else
				not_found
			end
			# puts "---------------------"
			# puts @key
		end
	end
	# -----------------------------------

	get '/test' do
		erb :path_0 do
			erb :cosa
		end
	end

	not_found do
		"Page not found"
	end
	
end
