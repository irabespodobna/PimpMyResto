class HomeController < ApplicationController
    def home

      @client = GooglePlaces::Client.new(ENV['GOOGLE_PLACES_KEY'])
      @spots = @client.spots(-33.8670522, 151.1957362)
      @names = @spots.collect { |spot| spot.name }
      @pitch = "spots #{@names} "

      # @pitch = "Salut a toi, et bienvenue sur notre site dedier aux \"gens bizarres\" comme toi, qui dispose d'un regime alimentaire particulier... Ici on peux te proposer d'accompagner tes potes au resto dans celui qu'ils préfèrent! Depuis longtemps malgré toi tu les empêches d'y aller, car il n'y a pas de plats adapter pour toi. Nous te porposons de créer une action dès maintenant pour demander à un retaurant d'incrémenter des plats plus responsables et adapter! C'est parti!"
    end

    def browse
    end

    def pimped
    end
end
