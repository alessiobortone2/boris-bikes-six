require 'dockingstation'

describe DockingStation do

  station = DockingStation.new

it 'raises error when more than one bike is created' do
  expect{station.release_bike}.to raise_error("no bikes available")
end

it 'raises error when more than one bike is docked' do
  DockingStation::DEFAULT_CAPACITY.times {station.dock(Bike.new)}
  bike1=Bike.new
  expect{station.dock(bike1)}.to raise_error("the dock is full")
end

it 'sets default capacity' do
  expect(station.capacity).to eq(20)
end

it "sets capacity to a new number" do
  station1 = DockingStation.new(10)
  expect(station1.capacity).to eq(10)
end

end

describe Bike do

  it 'can be reported broken' do
    expect(Bike.new).not_to be(:working?)
  end
end
=begin
    it 'releases a bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'releases a new instance of the Bike class' do
    expect(DockingStation.new.release_bike.class).to eq Bike
  end

it 'docks a bike' do
  station = DockingStation.new
  bike2 = station.release_bike
  expect(station.dock(bike2)).to eq bike2
end

it 'sees the bike' do
  station = DockingStation.new
  bike2 = station.release_bike
  station.dock(bike2)
  expect(station.bike).to eq bike2
end


it 'checks if the bike is working' do
  expect(DockingStation.new.release_bike).to respond_to(:working?)
end
=end
