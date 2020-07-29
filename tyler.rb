U = "https://maps.gsi.go.jp/xyz/experimental_landformclassification1"
SILENT = false

while gets
  print "curl #{SILENT ? '--silent' : ''} #{U}/#{$_.split(',')[0]}\n"
end
