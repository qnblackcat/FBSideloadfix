FBSideloadfix_INJECT_DYLIBS = Tweaks/Wolf.dylib

MODULES = jailed
include $(THEOS)/makefiles/common.mk
ARCHS = arm64
CODESIGN_IPA = 0

TWEAK_NAME = FBSideloadfix
DISPLAY_NAME = Facebook
BUNDLE_ID = com.facebook.Facebook

FBSideloadfix_FILES = Init.x SideloadedFixes.x
FBSideloadfix_IPA = /path/to/Facebook.iPA

include $(THEOS_MAKE_PATH)/tweak.mk

after-package::
	@rm -rf .theos/_/Payload