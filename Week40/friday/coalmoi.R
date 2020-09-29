plot_coal <- function(df1, df2){
  left_join(df2, df1, by = c("p" = "n")) %>%
    left_join(df1, by = c("c" = "n")) %>%
    ggplot() +
    geom_segment(aes(x = x.x, y = y.x, xend = x.y, yend = y.y)) +
    geom_point(data = df1, aes(x = x, y = y, color = as.factor(n)), size = 8) +
    geom_text(data = df1, aes(x = x, y = y, label = n), size = 6) +
    theme_light() +
    theme(axis.title.x = element_blank(), axis.text.x = element_blank(),  axis.ticks.x.bottom = element_blank(), legend.position = "none") +
    ylab("Coalescence Time")
}

sim_coal_moi <- function(n_nodes = 5){
  i = 0
  nodes = 1:n_nodes
  coalescencetime_total = 0
  
  nodes_df <- data.frame(n = nodes, x = nodes, y = 0, t = 0)
  coale_df <- data.frame(p = c(), c = c(), t = c())
  
  
  while(length(nodes) > 1){
    length(nodes) > 1
    i = i+1                                                        # interation counter
    
    nodecount = length(nodes)                                      # number of nodes
    tocoalesce = sample(1:nodecount, size=2)                       # two nodes to coales
    coalescencerate = nodecount*(nodecount-1)/2                    # coalesing rate 
    coalescencetime = rexp(1, rate=coalescencerate)                # coalesing time 
    coalescencetime_total = coalescencetime_total+coalescencetime  # total coalesing time 
    
    
    n1 = nodes[tocoalesce[1]]  # node 1 that coal (child 1)
    n2 = nodes[tocoalesce[2]]  # node 2 that coal (child 2)
    n3 = i+n_nodes             # new coal node    (parent)
    
    nodes <- nodes[-tocoalesce] # node list update (remove two childs)
    nodes <- c(nodes, n3)       # node list update (add parental node)
    
    
    x_pos = ( (nodes_df %>% filter(n == n1) %>% pull(x) %>% unique(.)) + (nodes_df %>% filter(n == n2) %>% pull(x) %>% unique()) )/2 # position on the X axis of parental node
    
    nodes_df <- rbind(nodes_df, nodes_df %>% filter(t == i-1) %>% mutate(t = i))
    nodes_df <- rbind(nodes_df, data.frame(n = i+n_nodes, x = x_pos, y = coalescencetime_total, t = i))
    if(i > 1){
      coale_df <- rbind(coale_df, coale_df %>% filter(t == i-1) %>% mutate(t = i))
    }
    coale_df <- rbind(coale_df, data.frame(p =  i+n_nodes, c = n1, t = i))
    coale_df <- rbind(coale_df, data.frame(p =  i+n_nodes, c = n2, t = i))
    
    print(paste("node1 =", n1, "node2 =", n2, "coaltime =", coalescencetime, "totalcoaltime =", coalescencetime_total)) # printing some stats
  }
  list(nodes_df, coale_df)
}
