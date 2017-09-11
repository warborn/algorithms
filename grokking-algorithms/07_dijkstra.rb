# Implementation of the Dijkstra's algorithm

graph = {}
graph['start'] = {}
graph['start']['a'] = 6
graph['start']['b'] = 2

graph['a'] = {}
graph['a']['fin'] = 1

graph['b'] = {}
graph['b']['a'] = 3
graph['b']['fin'] = 5

graph['fin'] = {}

infinity = 1.0/0.0
costs = {}
costs['a'] = 6
costs['b'] = 2
costs['fin'] = infinity

parents = {}
parents['a'] = 'start'
parents['b'] = 'start'
parents['fin'] = nil

processed = []

def find_lowest_cost_node(costs, processed)
  lowest_cost = 1.0/0.0
  lowest_cost_node = nil

  costs.each do |node, cost|
    if cost < lowest_cost and not processed.include?(node)
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end

def print_path(parents, end_node)
  prev_node = parents[end_node]
  if not prev_node
    end_node
  else
    print_path(parents, prev_node) + " -> #{end_node}"
  end
end

node = find_lowest_cost_node(costs, processed)
while node
  cost = costs[node]
  neighbors = graph[node]
  neighbors.each do |key, val|
    new_cost = cost + val
    if costs[key] > new_cost
      costs[key] = new_cost
      parents[key] = node
    end
  end
  processed << node
  node = find_lowest_cost_node(costs, processed)
end

puts parents.inspect
puts print_path(parents, 'fin')