clean:
	rm -r data

pmtiles:
	java -jar ../basemaps/tiles/target/*-with-deps.jar \
	--download --force --area=finland --clip=otaniemi.geojson
	mv finland.pmtiles docs/otaniemi.pmtiles

