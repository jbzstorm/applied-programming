require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end

get "/" do
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "jack", "queen","ace"]
    suits = ["clubs", "diamonds", "hearts", "spades"]
    deck = []
    for rank in ranks 
        for suit in suits
            deck << "#{rank}_of_#{suit}"
        end
    end
    
    number_of_cards = 10
    @deck_shuffle = deck.shuffle[0,number_of_cards]
    
    
    view 'cards'
end