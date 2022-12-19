OUT = global
SRC_DIR = src

PROFILE := $(shell echo $$HOME)/.bash_profile

add_profile:
	@ cat bash_profile >> $(PROFILE)
	$(info Created profile file)

install:
	@ ln -sf $(SRC_DIR)/coding_style.sh $(OUT)/cs
 	$(info Created coding style link)

uninstall:
	$(RM) -r $(OUT)/*
	$(info Removed coding style link)

.PHONY: add_profile install uninstall
