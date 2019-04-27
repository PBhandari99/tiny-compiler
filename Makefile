%.run: %.o
	clang -m32 -o $@ main.c $<
%.o: %.s
	nasm -f elf32 -o $@ $<

%.s: %.int
	ocaml compile.ml $< > $@

clean:
	rm -f *.o *.s *.run 
