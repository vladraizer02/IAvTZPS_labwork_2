#compile
%.o: %.s
	nasm -f elf64 $< -o $@
#link
%: %.o
	ld $< -o $@
#empty
% : %.s
