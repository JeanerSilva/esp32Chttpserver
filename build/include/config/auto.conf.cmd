deps_config := \
	/home/usuario/esp/esp-idf/components/app_trace/Kconfig \
	/home/usuario/esp/esp-idf/components/aws_iot/Kconfig \
	/home/usuario/esp/esp-idf/components/bt/Kconfig \
	/home/usuario/esp/esp-idf/components/driver/Kconfig \
	/home/usuario/esp/esp-idf/components/esp32/Kconfig \
	/home/usuario/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/usuario/esp/esp-idf/components/esp_event/Kconfig \
	/home/usuario/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/usuario/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/usuario/esp/esp-idf/components/ethernet/Kconfig \
	/home/usuario/esp/esp-idf/components/fatfs/Kconfig \
	/home/usuario/esp/esp-idf/components/freemodbus/Kconfig \
	/home/usuario/esp/esp-idf/components/freertos/Kconfig \
	/home/usuario/esp/esp-idf/components/heap/Kconfig \
	/home/usuario/esp/esp-idf/components/libsodium/Kconfig \
	/home/usuario/esp/esp-idf/components/log/Kconfig \
	/home/usuario/esp/esp-idf/components/lwip/Kconfig \
	/home/usuario/esp/esp-idf/components/mbedtls/Kconfig \
	/home/usuario/esp/esp-idf/components/mdns/Kconfig \
	/home/usuario/esp/esp-idf/components/mqtt/Kconfig \
	/home/usuario/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/usuario/esp/esp-idf/components/openssl/Kconfig \
	/home/usuario/esp/esp-idf/components/pthread/Kconfig \
	/home/usuario/esp/esp-idf/components/spi_flash/Kconfig \
	/home/usuario/esp/esp-idf/components/spiffs/Kconfig \
	/home/usuario/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/usuario/esp/esp-idf/components/unity/Kconfig \
	/home/usuario/esp/esp-idf/components/vfs/Kconfig \
	/home/usuario/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/usuario/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/home/usuario/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/usuario/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/usuario/esp/esp-idf/examples/jeaner/esp32Chttpserver/main/Kconfig.projbuild \
	/home/usuario/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/usuario/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
