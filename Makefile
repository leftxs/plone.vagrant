SHELL := /bin/bash
VENV=.
NO_COLOR    = \x1b[0m
OK_COLOR    = \x1b[32;01m

.PHONY: bootstrap build 

bootstrap:
	@echo -e "${OK_COLOR}>>> Creating virtuelenv...${NO_COLOR}"
	virtualenv --python=python2.7 --no-site-packages $(VENV)

	@echo -e "${OK_COLOR}>>> Install Ansible...${NO_COLOR}"
	bash -c "source bin/activate && pip install ansible"

build:
	@echo -e "${OK_COLOR}>>> Hold on we are building now!...${NO_COLOR}"
	bash -c "source bin/activate && vagrant up"

