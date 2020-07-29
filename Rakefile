M = "https://cyberjapandata.gsi.go.jp/xyz/experimental_landformclassification1/mokuroku.csv.gz"

task :default do
  sh "curl --silent #{M} | gzcat | ruby tyler.rb | tippecanoe-json-tool > mozdev.geojsons; ogr2ogr -overwrite mozdev.shp mozdev.geojsons"
end

