#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include "Clock.hpp"

void OnAlarm();
int isSleeping;

int main(int argc, char* argv[]) {
  CClock clock;
  clock.Start();

  clock.SetCallbackFunction(OnAlarm);
  isSleeping = 1;
  printf("sleep\n");

  while (isSleeping)
    sleep(100);

  clock.Stop();
  printf("x\n");
  sleep(100);
  return 0;
}

void OnAlarm() {
  printf("alarm\n");
  isSleeping = 0;
}
