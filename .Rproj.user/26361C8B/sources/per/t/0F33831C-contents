library(fmsb)

# creating a radar plot to compare Andersen and Virgil stats

# create data
Attattributes <- c("Passes Attempted",
                   "Passes Completed (long)          ",
                   "Passes Completed (short)                  ",
                   "Progressive Passes",
                   "Assists",
                   "xG Assisted",
                   "Shot-Creating Actions")

# all values are percentiles
attvalues_andersen <- c(85, 99, 31, 55, 98, 98, 90)
attvalues_virgil <- c(94, 95, 84, 76, 84, 30, 53)

Defattributes <- c("Successful Pressures %",
                   "Tackles Won",
                   "Interceptions",
                   "Blocks",
                   "Ball Recoveries",
                   "Aerials Win %",
                   "Dribbles Stopped")

# percentile in the league
defvalues_andersen <- c(70, 30, 27, 11, 35, 77, 64)
defvalues_virgil <- c(63, 1, 9, 1, 98, 99, 99)

# create matrix for attack and defense (2 rows 7 cols)
att_mx <- as.data.frame(rbind(attvalues_andersen, attvalues_virgil))
colnames(att_mx) <- Attattributes
rownames(att_mx) <- c("Andersen", "Virgil")

# add max value on first line, min on second
att_mx <- rbind(rep(100,7) , rep(0,7) , att_mx)

#### Radar plot for Attacking stats ####

# Color vector
colors_border = c(rgb(0.8,0.2,0.8,1),rgb(1,0,0.1,1))
colors_in = c(rgb(0.8,0.2,0.8,0.5), rgb(1,0,0.2,0.6)) # andersen, virgil

# plot with custom options:
radarchart( att_mx  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", caxislabels=seq(0,100,25), paxislabels = rep(10,7), cglwd=0.8,
            #custom labels
            vlcex=0.8, title = "Attacking stats: Andersen v Virgil"
)

# Legend
legend(x=1, y=1.5, legend = rownames(att_mx[-c(1,2),]), bty = "n", pch=20, col=colors_border, text.col = "black", cex=1.2, pt.cex=3)

#### radar plot for defensive stats ####

# create matrix for attack and defense (2 rows 7 cols)
def_mx <- as.data.frame(rbind(defvalues_andersen, defvalues_virgil))
colnames(def_mx) <- Defattributes
rownames(def_mx) <- c("Andersen", "Virgil")

# add max value on first line, min on second
def_mx <- rbind(rep(100,7) , rep(0,7) , def_mx)

# plot with custom options:
radarchart( def_mx  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", caxislabels=seq(0,100,25), paxislabels = rep(20,7), cglwd=0.8,
            #custom labels
            vlcex=0.8, title = "Defensive stats: Andersen v Virgil" 
)

# Legend
legend(x=1, y=1.5, legend = rownames(att_mx[-c(1,2),]), bty = "n", pch=20, col=colors_border, text.col = "black", cex=1, pt.cex=3)

#### radarchart creating function ####
playerRader <- function(attributes, attribute_vals, colour_in, colour_border, title){
  
}

