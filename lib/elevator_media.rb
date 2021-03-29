module ElevatorMedia
    class Streamer
        def self.test
            0
        end
        
        def self.format(data)
            "<div> #{data} </div>"
        end

        def self.getContent(method)
            return format(game()) if method == "test"
        end

        def self.game
            "<iframe width=100% height=100% src=https://www.addictinggames.com/embed/html5-games/23635 scrolling=no></iframe>"
        end

    end
end