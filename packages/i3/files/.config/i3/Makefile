BUILD_DIR ?= .
WORKSPACES=$(BUILD_DIR)/workspaces.config

all: $(WORKSPACES)

clean:
	rm -f $(WORKSPACES)

$(WORKSPACES): workspaces-def.yaml
	i3-config-gen-workspaces $< > $@
