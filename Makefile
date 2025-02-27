CXX=g++

OUTPUT=img2tim

SRC=main.cpp \
	tim.cpp

PROJECT_DIR=.

LDFLAGS=-lgcc -lfreeimage

INC=-I. -I/usr/include

CPPFLAGS=-Wall

$(shell mkdir -p build)

all:
	$(CXX) $(SRC) $(LDFLAGS) $(INC) $(CPPFLAGS) -o build/$(OUTPUT)

clean: FORCE
	rm -rf build

install:
	cp $(PROJECT_DIR)/build/img2tim /usr/local/bin/img2tim

FORCE:
