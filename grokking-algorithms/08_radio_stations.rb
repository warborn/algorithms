# Use of a Greedy algorithm to solve the radio station problem
require 'set'

states_needed = Set.new ['mt', 'wa', 'or', 'id', 'nv', 'ut', 'ca', 'az']

stations = {}
stations['knone']  = Set.new ['id', 'nv', 'ut']
stations['ktwo']   = Set.new ['wa', 'id', 'mt']
stations['kthree'] = Set.new ['or', 'nv', 'ca']
stations['kfour']  = Set.new ['nv', 'ut']
stations['kfive']  = Set.new ['ca', 'az']

final_stations = Set.new

until states_needed.empty?
  best_station = nil
  states_covered = Set.new

  stations.each do |station, states_for_station|
    covered = states_needed & states_for_station
    if covered.size > states_covered.size
      best_station = station
      states_covered = covered
    end
  end
  final_stations.add(best_station)
  states_needed -= states_covered
end

puts final_stations.to_a.inspect
