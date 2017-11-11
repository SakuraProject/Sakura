set(FLASH_SCRIPT openocd.sh)
set(DEBUG_SCRIPT openocd.sh)

set(OPENOCD_PRE_CMD "targets 1")
set(OPENOCD_LOAD_CMD "load_image     ${PROJECT_BINARY_DIR}/${KERNEL_BIN_NAME} ${CONFIG_PHYS_LOAD_ADDR}")
set(OPENOCD_VERIFY_CMD "verify_image ${PROJECT_BINARY_DIR}/${KERNEL_BIN_NAME} ${CONFIG_PHYS_LOAD_ADDR}")

set_property(GLOBAL APPEND PROPERTY FLASH_SCRIPT_ENV_VARS
  OPENOCD_PRE_CMD
  OPENOCD_LOAD_CMD
  OPENOCD_VERIFY_CMD
  )
