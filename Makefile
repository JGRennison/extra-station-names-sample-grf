NMLC = nmlc

.PHONY: default bundle

default:
	$(NMLC) extra_station_names_sample.nml --nfo=extra_station_names_sample.nfo --grf=extra_station_names_sample.grf

bundle: default
	mkdir -p extra_station_names
	cp extra_station_names_sample.grf extra_station_names
	cp README.md extra_station_names/readme.txt
	cp LICENSE extra_station_names/license.txt
	cp changelog.md extra_station_names/changelog.txt
	tar cvf extra_station_names.tar extra_station_names
