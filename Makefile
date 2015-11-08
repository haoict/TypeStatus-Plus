include $(THEOS)/makefiles/common.mk

SUBPROJECTS = api app messages prefs springboard watch-extension $(wildcard api/providers/*)

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
