graph = {1: {2: 1}, 2: {1: 1, 3: 1, 4: 1, 5: 1}, 3: {2: 1, 4: 1, 5: 1}, 4: {3: 1, 5: 1}, 5: {4: 1, 6: 1}, 6: {5: 1}}

def shortest_path(G, v1, v2):
    paths_from_v1, to_check = {}, [v1]
    paths_from_v1[v1] = [v1]
    while len(to_check) > 0:
      current = to_check[0]
      to_check.pop(0)
      for node in G[current].keys():
        if node not in paths_from_v1:
          paths_from_v1[node] = paths_from_v1[current] + [node]
          to_check.append(node)
        if node == v2: 
          # print paths_from_v1
          return paths_from_v1[v2]
    return None
    
print shortest_path(graph, 1, 7)
print shortest_path(graph, 1, 6)