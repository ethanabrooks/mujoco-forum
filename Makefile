BUILD=build/
MK_BUILD=mkdir -p $(BUILD)
MJ_DIR=$(HOME)/.mujoco/mjpro150/
COMMON=-O2 -I$(MJ_DIR)/include -Iheaders -L$(MJ_DIR)/bin -mavx

default:
	$(MK_BUILD)
	clang $(COMMON) basic.cpp -g -lmujoco150 -lglfw.3 -o $(BUILD)utilosx
	$(BUILD)utilosx "model/world.xml"

clean:
	rm -f MUJOCO_LOG.txt
	rm -f egl/*.so
	rm -f glfw/*.so
	rm -f mujoco/*.so 
	rm -f mujoco/*.pyc
	rm -rf mujoco/__pycache__/ 
	rm -rf build/ 
	rm -rf *.egg-info 
	rm -rf dist/
