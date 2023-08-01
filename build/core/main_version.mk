# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Branding
ADDITIONAL_SYSTEM_PROPERTIES += \
    org.cyclone_version=$(CYCLONE_BASE_VERSION) \
    org.cyclone.fanbase_name=$(CYCLONE_FANBASE_NAME) \
    org.cyclone.version.display=$(CYCLONE_VERSION) \
    org.cyclone.build_date=$(CUSTOM_BUILD_DATE) \
    org.cyclone.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.cyclone.build_type=$(CUSTOM_BUILD_TYPE)

# Updater
ifeq ($(IS_OFFICIAL),true)
    ADDITIONAL_SYSTEM_PROPERTIES  += \
        net.pixelos.build_type=ci \
        net.pixelos.version=$(CUSTOM_VERSION_PROP)
endif
