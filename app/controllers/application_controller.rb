class ApplicationController < ActionController::Base

	http_basic_authenticate_with name: "ryan96db", password: "Victorian#2", except: [:index, :show]
end
