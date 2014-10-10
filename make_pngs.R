source('load_and_clean.R')

make_png <- function(name) {
  png(filename = paste(name, 'png', sep = '.'), width = 480, height = 480)
  source(paste(name, 'R', sep = '.'))
  dev.off()
}

make_png('plot1')
make_png('plot2')
make_png('plot3')
make_png('plot4')