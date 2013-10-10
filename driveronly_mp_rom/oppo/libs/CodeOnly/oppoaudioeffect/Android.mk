LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(TARGET_PRODUCT),msm8960)
  EFFECT_PATH :=
  EFFECT_PATH += $(LOCAL_PATH)/qcom_8960/default
endif

ifeq ($(TARGET_PRODUCT),msm8660_surf)
  EFFECT_PATH :=
  EFFECT_PATH += $(LOCAL_PATH)/qcom_8660/default
endif

ifeq ($(MTK_PLATFORM),MT6589)
  EFFECT_PATH :=
  EFFECT_PATH += $(LOCAL_PATH)/mtk_6589/default
  ifeq ($(TARGET_PRODUCT),OPPO89T_12083)
	EFFECT_PATH :=
	EFFECT_PATH += $(LOCAL_PATH)/mtk_6589/OPPO89T_12083
  endif
  ifeq ($(TARGET_PRODUCT),OPPO89T_13009)
	EFFECT_PATH :=
	EFFECT_PATH += $(LOCAL_PATH)/mtk_6589/OPPO89T_13009
  endif
  ifeq ($(TARGET_PRODUCT),OPPO89T_13003)
	EFFECT_PATH :=
	EFFECT_PATH += $(LOCAL_PATH)/mtk_6589/OPPO89T_13003
  endif
  ifeq ($(TARGET_PRODUCT),OPPO89T_13015)
	EFFECT_PATH :=
	EFFECT_PATH += $(LOCAL_PATH)/mtk_6589/OPPO89T_13015
  endif
endif

ifeq ($(TARGET_PRODUCT),oppo77_12015)
  EFFECT_PATH :=
  EFFECT_PATH += $(LOCAL_PATH)/mtk_6577/default
endif

ifeq ($(MTK_PLATFORM),MT6582)
  EFFECT_PATH :=
  EFFECT_PATH += $(LOCAL_PATH)/mtk_6582/default
endif

$(info $(EFFECT_PATH))
include $(call all-makefiles-under,$(EFFECT_PATH))
