ENV_VARS                                  += HOST_CONSUL_ACL_TOKENS_MASTER HOST_CONSUL_HTTP_TOKEN HOST_CONSUL_SERVICE_8500_TAGS
HOST_CONSUL_ACL_TOKENS_MASTER             ?= 01234567-89ab-cdef-0123-456789abcdef
HOST_CONSUL_HTTP_TOKEN                    ?= $(HOST_CONSUL_ACL_TOKENS_MASTER)
HOST_CONSUL_SERVICE_8500_AUTH             ?= default
HOST_CONSUL_SERVICE_8500_NAME             ?= consul
HOST_CONSUL_SERVICE_8500_TAGS             ?= $(call tagprefix,HOST_CONSUL,8500)
HOST_CONSUL_UFW_UPDATE                    ?= 8500