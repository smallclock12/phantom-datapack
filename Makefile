#!make
include .env

PACK_NAME := phantom

.PHONY: link
link:
	ln -sfT $$(pwd)/datapack ${PATH_TO_MC}/saves/${WORLD_NAME}/datapacks/${PACK_NAME}
	ln -sfT $$(pwd)/resources ${PATH_TO_MC}/resourcepacks/${PACK_NAME}


