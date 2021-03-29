require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "getContent" do
        context 'test for data fetch' do
            it 'returns html' do
                expect(ElevatorMedia::Streamer.getContent).to eq(0)
            end
        end
    end
end