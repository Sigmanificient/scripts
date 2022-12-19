OUT = global
SRC_DIR = src

COPY = @ cp -r

install:
	@ mkdir -p $(OUT)

	$(COPY) $(SRC_DIR)/coding_style.sh $(OUT)/cs
	chmod +x $(OUT)/cs
	$(info Created coding style link)

	$(COPY) $(SRC_DIR)/weather.sh $(OUT)/weather
	chmod +x $(OUT)/weather
	$(info Created weather link)

	$(COPY) $(SRC_DIR)/clean_dl.sh $(OUT)/clean_dl
	chmod +x $(OUT)/clean_dl
	$(info Created clean_dl link)

uninstall:
	$(RM) -r $(OUT)/*
	$(info Removed coding style link)

.PHONY: install uninstall
