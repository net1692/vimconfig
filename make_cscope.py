import os

if __name__ == '__main__':
	curdir = os.getcwd()
	os.system("ctags -R")
	os.system("rm -rf cscope.files cscope.files")
	os.system("find " + curdir + " \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.hpp' -o -name '*.s' -o -name '*.S' \) -print>cscope.files")
	os.system("cscope -R -b -i cscope.files")
