BUILD_DIR ?= .
CONFIG = $(BUILD_DIR)/config
WORKSPACES=$(BUILD_DIR)/workspaces.config
FILES = theme.config monitors.config $(WORKSPACES) control.config local.config bar.config startup.config

all: $(CONFIG)

clean:
	rm -f $(CONFIG) $(WORKSPACES)

$(WORKSPACES): workspaces-def.yaml
	i3-config-gen-workspaces $< > $@

$(CONFIG): $(FILES)
	cat <(echo "# i3 config file (v4)") $^ > $(CONFIG)
