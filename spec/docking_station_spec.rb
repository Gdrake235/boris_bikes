require './lib/docking_station'


describe DockingStation do
  docking_station = DockingStation.new
  it 'can respond to bike' do
  expect(docking_station).respond_to?(:release_bike)
  end
  
    describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
      expect{ docking_station.release_bike }.to raise_error 'No bikes available'
      end

      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
        

      end
    end
  
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }
  
    it 'dock something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    describe '#dock' do
      it 'raises an error when full' do
        subject.dock(Bike.new)
        expect { subject.dock Bike.new }.to raise_error 'Docking station full'
      end


    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
  
    end
  end
end