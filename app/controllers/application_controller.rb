require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :home
    end

    post '/teams' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |details|
            Member.new(details)
          end
    
          @members = Member.all

        erb :team
    end


end
