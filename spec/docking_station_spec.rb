require 'docking_station'

describe DockingStation do
it 'responds to the method release_bike' do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.release_bike).to eq bike
end
  describe '#working?' do
    it 'gets a bike and tests if it is working' do
  station = DockingStation.new
  bike = Bike.new
  working_bike = bike.working?
  expect(bike).to be_truthy
    end
  it 'sets user capacity when creating a dockingstation' do
    station = DockingStation.new(50)
    expect(station.capacity).to eq 50
  end

  it 'capacity is equal to Default Capacity if no argument is given' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do 
    it 'raises error if dock is full' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect {subject.dock Bike.new}.to raise_error 'Dock is full'
    end
  end



    it 'is expected to respond to dock' do
  expect { subject.to respond_to(:dock).with(1).argument }
end
it 'is expected to respond to bike' do 
  expect { subject.to respond_to(:bike)}
end
it 'docks something' do
  bike = Bike.new
  expect(subject.dock(bike)).to eq [bike]
end
it 'checks if there is a bike docked' do
  bike = Bike.new
  station = DockingStation.new
  docked_bike = station.dock(bike)
  expect(docked_bike)
end

# it "shows the condition of a bike as working or not" do
end 