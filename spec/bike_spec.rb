require './lib/docking_station'
describe Bike do
  it 'is the bike working' do
  expect(Bike).respond_to?(:working?)
end
end