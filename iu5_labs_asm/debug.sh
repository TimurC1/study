nasm -g -f elf64 "$1.asm" -F dwarf -o "$1.o"
ld -g -m elf_x86_64 "$1.o" -o "$1.tmp"
gdb "$1.tmp"
