#include <stdio.h>

void func1() {
  printf("hi");
}

void func2() {
  int a = 3;
  printf("%d\n", a); 
}

int main(int argc, char *argv[]) {
  void (*func)() = NULL;

  func = func1;

  func();

  return 0;
}
