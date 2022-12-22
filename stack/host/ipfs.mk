ENV_VARS                                  += HOST_IPFS_API_HTTPHEADERS_ACA_ORIGIN HOST_IPFS_SERVICE_5001_TAGS HOST_IPFS_SERVICE_8080_TAGS
HOST_IPFS_API_HTTPHEADERS_ACA_ORIGIN      ?= [$(call patsublist,%,"https://%",$(patsubst %/,%,$(HOST_IPFS_SERVICE_8080_URIS)))]
HOST_IPFS_SERVICE_HOST_URIS               ?= */ipfs/ */ipns/
HOST_IPFS_SERVICE_NAME                    ?= ipfs
HOST_IPFS_SERVICE_5001_PATH               ?= api/
HOST_IPFS_SERVICE_5001_TAGS               ?= $(call tagprefix,HOST_IPFS,5001)
HOST_IPFS_SERVICE_8080_ENVS               ?= host
HOST_IPFS_SERVICE_8080_TAGS               ?= $(call urlprefix,,,$(HOST_IPFS_SERVICE_8080_URIS) $(call servicenvs,HOST_IPFS,8080,URIS))
HOST_IPFS_SERVICE_8080_URIS               ?= $(call uriprefix,*ipfs *ipns)
HOST_IPFS_UFW_DOCKER                      ?= 4001/tcp 4001/udp 8080
