require 'dockingstation'

describe DockingStation do

  station = DockingStation.new
  station2 = DockingStation.new
  bike1=Bike.new

  it 'raises error when more than one bike is created' do
    expect{station.release_bike}.to raise_error("no bikes available")
  end

  it 'raises error whenwe are above capacity' do
    DockingStation::DEFAULT_CAPACITY.times {station.dock(Bike.new)}
    expect{station.dock(bike1)}.to raise_error("the dock is full")
  end

  it 'sets default capacity' do
    expect(station.capacity).to eq(20)
  end

  it "sets capacity to a new number" do
    station1 = DockingStation.new(10)
    expect(station1.capacity).to eq(10)
  end

    it 'releases a bike' do
    expect(station).to respond_to(:release_bike)
  end

  it 'can be reported broken' do
    expect(station2.dock double(:bike)).to respond_to(:report_broken)
  end

  it 'releases working bikes' do
    subject.dock double(:bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  let(:bike) { double :bike }
  it 'releases working bikes' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock(bike)
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end



=begin
  it 'releases a new instance of the Bike class' do
    expect(station.release_bike.class).to eq Bike
  end

  it 'docks a bike' do
    bike2 = station.release_bike
    expect(station.dock(bike2)).to eq bike2
  end

  it 'sees the bike' do
    bike2 = station.release_bike
    station.dock(bike2)
    expect(station.bike).to eq bike2
  end

  it 'checks if the bike is working' do
    expect(station.release_bike).to respond_to(:working?)
  end
=end

end

describe Bike do

  it 'can be reported broken' do
    expect(Bike.new).to respond_to(:broken?)
  end
end
