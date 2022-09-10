APP_DIR                         ?= $(CURDIR)
APP_DOMAIN                      ?= $(addsuffix .,$(filter-out master,$(ENV)))$(USER).$(DOMAIN)
APP_HOST                        ?= $(addsuffix .,$(APP))$(APP_DOMAIN)
APP_INSTALLED                   ?= $(APPS)
APP_PARENT                      ?= $(MONOREPO)
APP_PARENT_DIR                  ?= $(MONOREPO_DIR)
APP_PATH                        += $(APP_PATH_PREFIX)
APP_REPOSITORY                  ?= $(APP_REPOSITORY_URL)
APP_REPOSITORY_HOST             ?= $(shell printf '$(APP_REPOSITORY_URI)\n' |sed 's|/.*||;s|.*@||')
APP_REPOSITORY_PATH             ?= $(shell printf '$(APP_REPOSITORY_URI)\n' |sed 's|[^/]*/||;')
APP_REPOSITORY_SCHEME           ?= $(shell printf '$(APP_REPOSITORY_URL)\n' |sed 's|://.*||;')
APP_REPOSITORY_URI              ?= $(shell printf '$(APP_REPOSITORY_URL)\n' |sed 's|.*://||;')
APP_REPOSITORY_URL              ?= $(GIT_REPOSITORY)
APP_REQUIRED                    ?= $(APP_REPOSITORY)
APP_SCHEME                      ?= https
APP_UPSTREAM_REPOSITORY         ?= $(or $(shell git config --get remote.upstream.url 2>/dev/null),$(GIT_UPSTREAM_REPOSITORY))
APP_URI                         ?= $(APP_HOST)/$(APP_PATH)
APP_URL                         ?= $(APP_SCHEME)://$(APP_URI)
CONTEXT                         += APP APPS BRANCH DOMAIN VERSION RELEASE
CONTEXT_DEBUG                   += APP_DIR APP_URL APP_REPOSITORY APP_UPSTREAM_REPOSITORY ENV_DEPLOY
ENV_DEPLOY                      ?= $(shell ls .git/refs/remotes/origin/ 2>/dev/null)
ENV_VARS                        += APP_DIR APP_DOMAIN APP_HOST APP_PATH APP_URL CONSUL_HTTP_TOKEN $(if $(filter true,$(MOUNT_NFS)),NFS_CONFIG)
MOUNT_NFS                       ?= false
NFS_CONFIG                      ?= addr=$(NFS_HOST),actimeo=3,intr,noacl,noatime,nocto,nodiratime,nolock,soft,rsize=32768,wsize=32768,tcp,rw,vers=3
NFS_HOST                        ?= host.docker.internal
PROJECT_NAME                    ?= $(COMPOSE_PROJECT_NAME)
SERVICE_NAME                    ?= $(COMPOSE_SERVICE_NAME)
SERVICE_VERSION                 ?= $(BUILD_DATE)-$(VERSION)
SERVICES                        ?= $(DOCKER_SERVICES)
