PATH_TO_DATAPACK := ~/.local/share/multimc/instances/1.21.1-a/.minecraft/saves/New\ World\ \(1\)/datapacks
NAME := Phantom


.PHONY: install
install:
	rm -rf ${PATH_TO_DATAPACK}/${NAME}
	mkdir -p ${PATH_TO_DATAPACK}/${NAME}
	cp -r ./src/* ${PATH_TO_DATAPACK}/${NAME}/
