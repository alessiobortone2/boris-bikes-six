require './lib/dockingstation'

docking_station = DockingStation.new
docking_station1 = DockingStation.new(10)


bike = Bike.new

docking_station.dock(bike)

docking_station.release_bike

p docking_station
p docking_station1
