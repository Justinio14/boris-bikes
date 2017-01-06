require "docking_station"


  describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
   bike = subject.release_bike
   expect(bike).to be_working

  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'docks something' do
   bike = Bike.new
   #subject.dock_bike(bike)
   # We want to return the bike we dock
   expect(subject.dock_bike(bike)).to eq [bike]
 end

  it "gives an error when docking station is full" do
  DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect{subject.dock_bike(Bike.new)}.to raise_error 'Full dock'
  end

   describe '#release_bike' do
   it 'releases a bike' do
     bike = Bike.new
     subject.dock_bike(bike)
     # we want to release the bike we docked
     expect(subject.release_bike).to eq bike
   end


   describe '#release_bike' do
     it 'raises an error if dock empty' do
     # subject.release_bike
     expect {subject.release_bike}.to raise_error 'Empty dock'
   end
 end


 end







  end
