require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe "test" do
        context 'rspec test' do
            it 'returns number' do
                expect(ElevatorMedia::Streamer.test).to eq(0)
            end
        end
    end
end

describe ElevatorMedia::Streamer do
    describe "test" do
        context 'test for data fetch' do
            it 'returns html' do
                expect(ElevatorMedia::Streamer.getContent).to eq(0)
            end
        end
    end
end