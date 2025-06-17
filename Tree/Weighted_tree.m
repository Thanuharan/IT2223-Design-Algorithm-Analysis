%Define nodes
nodes = {'A','B','C','D','E','F','G'};

%Define edges using source and target nodes 
s = [1 1 2 2 3 3]; %From: A->B, A->C, B->D, B->E, C->
t = [2 3 4 5 6 7]; %To

%Define weights
weights = [5 3 2 4 6 1];

%Create a directed graph
G = digraph(s,t,weights,nodes);

%Plot the tree with edge weights displayed
plot(G, ...
    'Layout','layered', ...
    'Direction','down', ...
    'Edgelabel',G.Edges.Weight);

title('Weighted tree with 3 levels');
