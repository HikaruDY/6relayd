#////////////////////////////////////////////////////////////////////////////////
#// Generic Makefile for DESLinux apps (without configure)
#//	(C)2023 Dark Embedded Systems
#//	http://oss.xprj.org/
#////////////////////////////////////////////////////////////////////////////////
prefix		= /usr

checkenv:
	@echo "Testing C compiler '$(CC)'..."
	@echo "	* You can change by 'CC=' args"
	@$(CC) -v > /dev/null 2>&1
	@$(MAKE) all

all: shared-app
install: install-shared-app

include Project.mk
include Makefile.in
