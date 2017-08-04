require './lib/dockingstation'

bike1 = Bike.new

p bike1.working?

p bike1.broken?

docking1 = DockingStation.new

p docking1.dock(bike1)

p docking1.release_bike

p docking1.report_broken

=begin
docking_station = DockingStation.new
docking_station1 = DockingStation.new(10)


bike = Bike.new

docking_station.dock(bike)

docking_station.release_bike

p docking_station
p docking_station1
=end
