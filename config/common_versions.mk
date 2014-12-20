# Versioning System For AOGP
# AOGP RELEASE VERSION
AOGP_VERSION_MAJOR = 1
AOGP_VERSION_MINOR = 0
AOGP_VERSION_MAINTENANCE =

VERSION := $(AOGP_VERSION_MAJOR).$(AOGP_VERSION_MINOR)$(AOGP_VERSION_MAINTENANCE)

# Set AOGP_BUILDTYPE
ifdef AOGP_NIGHTLY
    AOGP_BUILDTYPE := NIGHTLY
endif
ifdef AOGP_EXPERIMENTAL
    AOGP_BUILDTYPE := EXPERIMENTAL
endif
ifdef AOGP_RELEASE
    AOGP_BUILDTYPE := RELEASE
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by AOGP Devs!)
ifdef AOGP_BUILDTYPE
else
    AOGP_BUILDTYPE := UNOFFICIAL
    AOGP_VERSION_MAJOR := 1
    AOGP_VERSION_MINOR := 0
endif

# Set AOGP version
ifdef AOGP_RELEASE
    AOGP_VERSION := "AOGP-Lollipop-v"$(VERSION) 
else
    AOGP_VERSION := "AOGP-v$(VERSION)-$(AOGP_BUILD)-$(AOGP_BUILDTYPE)"-$(shell date +%Y%m%d-%H%M)
endif

AOGP_DISPLAY_VERSION := $(VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(AOGP_VERSION) \
    ro.aogp.version=$(VERSION)-$(AOGP_BUILDTYPE)

PRODUCT_PROPERTY_OVERRIDES += \
ro.aogp.display.version=$(AOGP_DISPLAY_VERSION) 

