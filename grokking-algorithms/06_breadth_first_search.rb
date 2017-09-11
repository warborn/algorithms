# Implementation of the Breadth-First-Search algorithm
def knows_javascript?(name)
  return name[-1] == 'j'
end

def search(name, graph)
  search_queue = []
  search_queue += graph[name]
  searched = []

  until search_queue.empty?
    person = search_queue.shift
    if not search_queue.include?(person)
      if knows_javascript?(person)
        return person
      else
        search_queue += graph[person]
        searched << person
      end
    end
  end
  return false
end

# Create a graph
graph = {}

# Fill the graph
graph['you']    = ['bob', 'claire', 'alice']
graph['alice']  = ['peggy']
graph['bob']    = ['peggy', 'anuj']
graph['claire'] = ['thom', 'jonny']
graph['anuj']   = []
graph['peggy']  = []
graph['thom']   = []
graph['jonny']  = []

# Search element in the graph
if person = search('you', graph)
  puts "#{person} knows JavaScript!"
else
  puts "No one knows JavaScript in your network :("
end