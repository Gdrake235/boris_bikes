require './lib/docking_station.rb'
describe DockingStation do
  it 'can release bike' do
    #arrange
    docking_station = DockingStation.new
    #act
    docking_station.release_bike(true)
    #assert
    expect(docking_station.release_bike).to respond_to(true)
  end
end