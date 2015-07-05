import math

# number of edges in Erdos-Renyi graph
def fn(nodes, probability):
  return int(math.floor(probability * nodes * (nodes - 1) / 2))

print fn(256, 0.25)
  