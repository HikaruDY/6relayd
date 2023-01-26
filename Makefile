#////////////////////////////////////////////////////////////////////////////////
#// Generic Makefile for DESLinux apps (without configure)
#//	(C)2023 Dark Embedded Systems
#//	http://oss.xprj.org/
#////////////////////////////////////////////////////////////////////////////////
prefix		= /usr

include Project.settings

checkenv:
	@echo ""
	@echo "* NOT CONFIGURED YET *"
	@echo "* RECOMMENDED TO USE './configure' script before 'make' *"
	@echo ""
	-@sleep 3
	@echo "Testing C compiler '$(CC)'..."
	@echo "	* You can change it by 'CC=' args"
	@$(CC) -v > /dev/null 2>&1
	@$(MAKE) all

all: $(CUSTOM_CMD) shared-$(TYPE)
install: $(CUSTOM_CMD) install-shared-$(TYPE)

include Project.mk
include Makefile.in
