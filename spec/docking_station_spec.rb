require "docking_station"


describe DockingStation do
  let(:bike) { double :bike}

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock_bike(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'docks something' do
   # bike = Bike.new   # => Bike
   allow(bike).to receive(:working?)
   # We want to return the bike we dock
   expect(subject.dock_bike(bike)).to eq [bike]
 end

  it "gives an error when docking station is full" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(bike) }   # => Bike
    expect{subject.dock_bike(bike)}.to raise_error 'Full dock'    # => Bike
  end

  it 'releases working bikes' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock_bike(bike)
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end

   describe '#release_bike' do
     it 'releases a bike' do
       #bike = Bike.new    # => Bike
       allow(bike).to receive(:working?).and_return(true)
       subject.dock_bike(bike)
       # we want to release the bike we docked
       expect(subject.release_bike).to eq bike
     end

     it 'releases a bike if working' do
       #bike = Bike.new    # => Bike
       allow(bike).to receive(:working?).and_return(true)
       subject.dock_bike(bike)
       expect(subject.release_bike).to be_working
     end

   describe '#release_bike' do
     it 'raises an error if dock empty' do
       # subject.release_bike
       expect {subject.release_bike}.to raise_error 'Empty dock'
     end
   end

  describe '#capacity' do
    it 'Allow user to set capacity of docking station' do
      # Create a new station with 50 bikes and test
      num = 50
      station = DockingStation.new(num)
      expect(station.capacity).to eq num

      # Create a default station using the DEFAULT_CAPACITY constant
      station = DockingStation.new
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end
  end
end







  end
