LV_DRIVERS_DIR_NAME ?= lv_drivers

override CFLAGS   := -I$(LVGL_DIR) -I$(PROJECT_DIR)/USER/App -I$(PROJECT_DIR)/USER/App/Utils/ArduinoJson/src $(CFLAGS)
override CXXFLAGS := -I$(LVGL_DIR) -I$(PROJECT_DIR)/USER/App -I$(PROJECT_DIR)/USER/App/Utils/ArduinoJson/src $(CXXFLAGS)
override LDFLAGS := -lm -lstdc++ $(LDFLAGS)


CSRCS += $(wildcard $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/*.c)
CSRCS += $(wildcard $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/wayland/*.c)
CSRCS += $(wildcard $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/indev/*.c)
CSRCS += $(wildcard $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/gtkdrv/*.c)
CSRCS += $(wildcard $(LVGL_DIR)/$(LV_DRIVERS_DIR_NAME)/display/*.c)

