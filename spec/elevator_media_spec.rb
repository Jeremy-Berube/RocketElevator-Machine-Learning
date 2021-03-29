require 'elevator_media'

testGame = "<iframe width=100% height=100% src=https://www.addictinggames.com/embed/html5-games/23635 scrolling=no></iframe>"

def format(data)
    "<div> #{data} </div>"
end

describe ElevatorMedia::Streamer do

    describe "test" do
        context 'rspec test' do
            it 'returns number' do
                expect(ElevatorMedia::Streamer.test).to eq(0)
            end
        end
    end
    
    describe "Content test" do
        context 'test for data fetch' do
            it 'returns html' do
                expect(ElevatorMedia::Streamer.getContent("test")).to eq(format(testGame)) 
            end
        end
    end
    
end
