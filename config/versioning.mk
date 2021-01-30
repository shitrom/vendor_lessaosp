# Versioning System
LESSAOSP_BUILD_VERSION = Alpha
LESSAOSP_BUILD_TYPE ?= UNOFFICIAL
LESSAOSP_BUILD_MAINTAINER ?= Unofficial maintainer
LESSAOSP_BUILD_DONATE_URL ?= https://www.paypal.me/udaie
LESSAOSP_BUILD_SUPPORT_URL ?= https://t.me/lessaosp

ifeq ($(LESSAOSP_BUILD_TYPE), OFFICIAL)
  OFFICIAL_DEVICES = $(shell cat vendor/lessaosp/lessaosp.devices)
  FOUND_DEVICE =  $(filter $(LESSAOSP_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(LESSAOSP_BUILD))
      LESSAOSP_BUILD_TYPE := OFFICIAL
    else
      LESSAOSP_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(LESSAOSP_BUILD)")
    endif
endif

# System version
TARGET_PRODUCT_SHORT := $(subst lessaosp_,,$(LESSAOSP_BUILD_TYPE))

LESSAOSP_DATE_YEAR := $(shell date -u +%Y)
LESSAOSP_DATE_MONTH := $(shell date -u +%m)
LESSAOSP_DATE_DAY := $(shell date -u +%d)
LESSAOSP_DATE_HOUR := $(shell date -u +%H)
LESSAOSP_DATE_MINUTE := $(shell date -u +%M)


LESSAOSP_BUILD_DATE := $(LESSAOSP_DATE_YEAR)$(LESSAOSP_DATE_MONTH)$(LESSAOSP_DATE_DAY)-$(LESSAOSP_DATE_HOUR)$(LESSAOSP_DATE_MINUTE)
LESSAOSP_BUILD_FINGERPRINT := LESSAOSP/$(LESSAOSP_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(LESSAOSP_BUILD_DATE)
LESSAOSP_VERSION := LESSAOSP-$(LESSAOSP_BUILD_VERSION)-$(LESSAOSP_BUILD_TYPE)-$(LESSAOSP_BUILD)-$(LESSAOSP_BUILD_DATE)-$(LESSAOSP_VARIANT)

PRODUCT_GENERIC_PROPERTIES += \
  ro.lessaosp.device=$(LESSAOSP_BUILD) \
  ro.lessaosp.version=$(LESSAOSP_VERSION) \
  ro.lessaosp.build.version=$(LESSAOSP_BUILD_VERSION) \
  ro.lessaosp.build.type=$(LESSAOSP_BUILD_TYPE) \
  ro.lessaosp.build.date=$(LESSAOSP_BUILD_DATE) \
  ro.lessaosp.build.fingerprint=$(LESSAOSP_BUILD_FINGERPRINT) \
  ro.lessaosp.build.maintainer=$(LESSAOSP_BUILD_MAINTAINER) \
  ro.lessaosp.build.donate_url=$(LESSAOSP_BUILD_DONATE_URL) \
  ro.lessaosp.build.support_url=$(LESSAOSP_BUILD_SUPPORT_URL)