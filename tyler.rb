U = "https://maps.gsi.go.jp/xyz/experimental_landformclassification1"
SILENT = false

while gets
  fn = $_.split(',')[0]
  zxy = fn.split('.')[0].split('/').map{|v| v.to_i}
  next unless zxy[0] == 14
  system "curl #{SILENT ? '--silent' : ''} #{U}/#{$_.split(',')[0]}"
end
