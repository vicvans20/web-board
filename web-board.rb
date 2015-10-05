require 'sinatra'
require 'rubygems'

get '/' do
	erb :application, :layout => false do
		erb :index
	end

end