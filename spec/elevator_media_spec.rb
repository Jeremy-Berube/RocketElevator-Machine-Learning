require 'elevator_media'

testGame = "<iframe width=100% height=100% src=https://www.addictinggames.com/embed/html5-games/23635 scrolling=no></iframe>"
ada = "<div class=nomics-ticker-widget data-name=Cardano data-base=ADA data-quote=USD></div><script src=https://widget.nomics.com/embed.js></script>"

def format(data)
    "<div> #{data} </div>"
end

"<div>  </div>" =~ /<div>/

describe ElevatorMedia::Streamer do

    describe "test" do
        context 'rspec test' do
            it 'returns number' do
                expect(ElevatorMedia::Streamer.test).to eq(0)
            end
        end
    end
    
    describe "getContent test" do
        # Test that will check if the response is the iframe game in the correct format
        context 'test for data fetch' do
            it 'returns html game' do
                expect(ElevatorMedia::Streamer.getContent("game")).to eq(format(testGame)) 
            end
        end
         # Test that will check if the response is the iframe cardano chart in the correct format
        context 'test for data fetch' do
            it 'returns html Cardano chart' do
                expect(ElevatorMedia::Streamer.getContent("ada")).to eq(format(ada))
            end
        end
         # Test that will check if the response is in the correct format using a regex match
        context 'test for data fecth' do
            it 'returns html random quote' do
                expect(ElevatorMedia::Streamer.getContent("quote")).to match(/<div>/)
            end
        end
    end

end
