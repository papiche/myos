ENV_VARS                                  += BLACKBOX_SERVICE_9115_TAGS
BLACKBOX_PRIMARY_TARGETS                  ?= $(PROMETHEUS_BLACKBOX_PRIMARY_TARGETS)
BLACKBOX_SECONDARY_TARGETS                ?= $(PROMETHEUS_BLACKBOX_SECONDARY_TARGETS)
BLACKBOX_SERVICE_9115_NAME                ?= blackbox
BLACKBOX_SERVICE_9115_TAGS                ?= $(call tagprefix,blackbox,9115)