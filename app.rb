require './environment'

module FormsLab
    class App < Sinatra::Base

        get '/' do
            erb :root
        end

        get '/new' do
            erb :"pirates/new"
        end

        post '/pirates' do
            @pirate = Pirate.new(params[:pirate])
            @ships = []
            params[:pirate][:ships].each do |ship|
                @new_ship = Ship.new(ship)
                @ships << @new_ship
            end
            erb :"pirates/show"
        end
    end
end
