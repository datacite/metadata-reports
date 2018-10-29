library(ggplot2)
library(plyr)
library(scales)
library(dplyr)
library(RColorBrewer)
library(tidyr)
library(psych)

plot_slopegraph<-function(slope_df){
    print(describe(slope_df$`2017`))
    print(describe(slope_df$`2018`))

    # Plot
    left_label <- paste(slope_df$registrant_name, round(slope_df$`2017`, digits = 2),sep=", ")
    right_label <- paste(slope_df$registrant_name, round(slope_df$`2018`, digits = 2),sep=", ")
    slope_df$class <- ifelse((slope_df$`2018` < slope_df$`2017`), "green", "green")

    p <- ggplot(slope_df) + geom_segment(aes(x=1.5, xend=2, y=`2017`, yend=`2018`, col=class), size=.75, show.legend=F) + 
                      geom_vline(xintercept=1.5, linetype="dashed", size=.1) + 
                      geom_vline(xintercept=2, linetype="dashed", size=.1) +
                      scale_color_manual(labels = c("Up", "Down"), 
                                         values = c("green"="#00ba38", "red"="#f8766d")) +  # color of lines
                      labs(x="Change in Links Counts", y="Article to Dataset Links") +  # Axis labels
                      xlim(.5, 2.5) + ylim(0,(1.1*(max(slope_df$`2017`, slope_df$`2018`))))  # X and Y axis limits
                        

    # Add texts
    p <- p + geom_text(label=left_label, y=slope_df$`2017`, x=rep(1.5, NROW(slope_df)), hjust=1.1, size=3)
    p <- p + geom_text(label=right_label, y=slope_df$`2018`, x=rep(2, NROW(slope_df)), hjust=-0.1, size=3)
    p <- p + geom_text(label="2017", x=1.5, y=1.1*(max(slope_df$`2017`, slope_df$`2018`)), hjust=1.2, size=5)  # title
    p <- p + geom_text(label="2018", x=2, y=1.1*(max(slope_df$`2017`, slope_df$`2018`)), hjust=-0.1, size=5)  # title

    # Minify theme
    p + theme(panel.background = element_blank(), 
               panel.grid = element_blank(),
               axis.ticks = element_blank(),
               axis.text.x = element_blank(),
               panel.border = element_blank(),
               plot.margin = unit(c(1,0.5,1,0.5), "cm")) 
}

hundred_plot<-function(types,title,legend_status){
    print(describe(types$count))
    fill <- c("#5F9EA0", "#E1B372", "#E1B373", "#E1B374", "#E1B375", "#E1B376", "#E1B377", "#E1B379", "#E1B379", "#E1B379")
    p4 <- ggplot() + geom_bar(aes(y = percentage, x = column, fill = type), data = (types), show.legend = legend_status,
                               stat="identity", colour="white")   + labs(x="Type", y="Percentage") +
      scale_y_continuous(labels = dollar_format(suffix = "%", prefix = ""))  + 
      ggtitle(title) 
    p4 + coord_flip() + theme(
                   plot.margin = unit(c(5,0,5,2), "cm"), legend.position="bottom", legend.box = "horizontal") 

    #https://stackoverflow.com/questions/34399760/change-color-for-specific-variable-r-ggplot-stacked-bar-chart
}

parallelset <- function(..., freq, col="gray", border=0, layer, 
                             alpha=0.5, gap.width=0.05) {
    
  darkcols <- brewer.pal(8, "Spectral")
    pal <-colorRampPalette(brewer.pal(8, "Paired"))
pal
  p <- data.frame(..., freq, col, border, alpha, stringsAsFactors=FALSE)
  n <- nrow(p)
  if(missing(layer)) { layer <- 1:n }
  p$layer <- layer
  np <- ncol(p) - 5
  d <- p[ , 1:np, drop=FALSE]
  p <- p[ , -c(1:np), drop=FALSE]
  p$freq <- with(p, freq/sum(freq))
  col <- col2rgb(p$col, alpha=TRUE)
  if(!identical(alpha, FALSE)) { col["alpha", ] <- p$alpha*256 }
  p$col <- apply(col, 2, function(x) do.call(rgb, c(as.list(x), maxColorValue = 256)))
  getp <- function(i, d, f, w=gap.width) {
    a <- c(i, (1:ncol(d))[-i])
    o <- do.call(order, d[a])
    x <- c(0, cumsum(f[o])) * (1-w)
    x <- cbind(x[-length(x)], x[-1])
    gap <- cumsum( c(0L, diff(as.numeric(d[o,i])) != 0) )
    gap <- gap / max(gap) * w
    (x + gap)[order(o),]
  }
  dd <- lapply(seq_along(d), getp, d=d, f=p$freq)
  par(mar = c(0, 0, 2, 0) + 0.1, xpd=TRUE )
  plot(NULL, type="n",xlim=c(0, 1), ylim=c(np, 1),
       xaxt="n", yaxt="n", xaxs="i", yaxs="i", xlab='', ylab='', frame=FALSE)
  for(i in rev(order(p$layer)) ) {
     for(j in 1:(np-1) )
     polygon(c(dd[[j]][i,], rev(dd[[j+1]][i,])), c(j, j, j+1, j+1),
             col=p$col[i], border=p$border[i])
   }
   text(0, seq_along(dd), labels=c("Data Centers", "Publishers"), adj=c(0,-2), font=2)
   for(j in seq_along(dd)) {
     ax <- lapply(split(dd[[j]], d[,j]), range)
     for(k in seq_along(ax)) {
       lines(ax[[k]], c(j, j))
#          text(ax[[k]][1], j, labels=names(ax)[k], adj=c(0, -0.25))
     }
   }           
}