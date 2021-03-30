module ElevatorMedia
    class Streamer
        require 'quotify'

        def self.test
            0
        end

        def self.format(data)
            "<div> #{data} </div>"
        end

        def self.getContent(data)
            return format(game()) if data == "game"
            return format(ada()) if data == "ada"
            return format(quote()) if data == "quote"
        end

        def self.game
            "<iframe width=100% height=100% src=https://www.addictinggames.com/embed/html5-games/23635 scrolling=no></iframe>"
        end

        def self.ada
            "<div class=nomics-ticker-widget data-name=Cardano data-base=ADA data-quote=USD></div><script src=https://widget.nomics.com/embed.js></script>"
        end

        def self.quote
            Quotify.generate
        end

    end
end