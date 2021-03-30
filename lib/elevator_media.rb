module ElevatorMedia
    class Streamer
        require 'quotify'

        def self.test
            0
        end
        # Formats the argument into a string
        def self.format(data)
            "<div> #{data} </div>"
        end
        # returns different content depending on which argument we pass in
        def self.getContent(data)
            return format(game()) if data == "game"
            return format(ada()) if data == "ada"
            return format(quote()) if data == "quote"
        end
        # little car game
        def self.game
            "<iframe width=100% height=100% src=https://www.addictinggames.com/embed/html5-games/23635 scrolling=no></iframe>"
        end
        # Cardano chart
        def self.ada
            "<div class=nomics-ticker-widget data-name=Cardano data-base=ADA data-quote=USD></div><script src=https://widget.nomics.com/embed.js></script>"
        end
        # Random quote
        def self.quote
            Quotify.generate
        end

    end
end