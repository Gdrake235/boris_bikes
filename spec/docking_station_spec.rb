require './lib/docking_station'
describe DockingStation do
  docking_station = DockingStation.new
  it 'can release bike' do
   expect(docking_station).respond_to?(:release_bike)
  end
   it 'releases working bikes' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
end