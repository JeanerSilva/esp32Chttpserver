deps_config := \
	/home/User/esp32/esp-idf/components/app_trace/Kconfig \
	/home/User/esp32/esp-idf/components/aws_iot/Kconfig \
	/home/User/esp32/esp-idf/components/bt/Kconfig \
	/home/User/esp32/esp-idf/components/driver/Kconfig \
	/home/User/esp32/esp-idf/components/esp32/Kconfig \
	/home/User/esp32/esp-idf/components/esp_adc_cal/Kconfig \
	/home/User/esp32/esp-idf/components/esp_event/Kconfig \
	/home/User/esp32/esp-idf/components/esp_http_client/Kconfig \
	/home/User/esp32/esp-idf/components/esp_http_server/Kconfig \
	/home/User/esp32/esp-idf/components/ethernet/Kconfig \
	/home/User/esp32/esp-idf/components/fatfs/Kconfig \
	/home/User/esp32/esp-idf/components/freemodbus/Kconfig \
	/home/User/esp32/esp-idf/components/freertos/Kconfig \
	/home/User/esp32/esp-idf/components/heap/Kconfig \
	/home/User/esp32/esp-idf/components/libsodium/Kconfig \
	/home/User/esp32/esp-idf/components/log/Kconfig \
	/home/User/esp32/esp-idf/components/lwip/Kconfig \
	/home/User/esp32/esp-idf/components/mbedtls/Kconfig \
	/home/User/esp32/esp-idf/components/mdns/Kconfig \
	/home/User/esp32/esp-idf/components/mqtt/Kconfig \
	/home/User/esp32/esp-idf/components/nvs_flash/Kconfig \
	/home/User/esp32/esp-idf/components/openssl/Kconfig \
	/home/User/esp32/esp-idf/components/pthread/Kconfig \
	/home/User/esp32/esp-idf/components/spi_flash/Kconfig \
	/home/User/esp32/esp-idf/components/spiffs/Kconfig \
	/home/User/esp32/esp-idf/components/tcpip_adapter/Kconfig \
	/home/User/esp32/esp-idf/components/unity/Kconfig \
	/home/User/esp32/esp-idf/components/vfs/Kconfig \
	/home/User/esp32/esp-idf/components/wear_levelling/Kconfig \
	/home/User/esp32/esp-idf/components/app_update/Kconfig.projbuild \
	/home/User/esp32/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/User/esp32/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/User/esp32/esp-idf/examples/protocols/http_server/simple/main/Kconfig.projbuild \
	/home/User/esp32/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/User/esp32/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
