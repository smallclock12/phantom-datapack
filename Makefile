PATH_TO_MC := ~/.local/share/multimc/instances/1.21.1-a/.minecraft
WORLD_NAME := DatapackWorld
PACK_NAME := phantom

print:
	echo $$(pwd)

.PHONY: link
link:
	ln -sfT $$(pwd)/datapack ${PATH_TO_MC}/saves/${WORLD_NAME}/datapacks/${PACK_NAME}
	ln -sfT $$(pwd)/resources ${PATH_TO_MC}/resourcepacks/${PACK_NAME}


