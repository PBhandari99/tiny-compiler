#include <stdio.h>

extern int our_code_starts_here() asm("assembly_code");

int main(int argc, char **argv) {
  int result = our_code_starts_here();
  printf("%d\n", result);
  return 0;
}
