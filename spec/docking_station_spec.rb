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
  it 'dock something' do
    bike = docking_station.dock(bike)
    expect(bike).respond_to?(:bike)
  end
  it 'dock bikes' do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

  it 'dock bike again' do
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.dock(bike)).to eq bike
  
  end
end