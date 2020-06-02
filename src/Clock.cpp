#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include "Clock.hpp"
//#include <process.h>

void *OnTimer(void* vp);

CClock::CClock(void) {
  bStop = true;
  m_cb = NULL;
}

CClock::~CClock(void) {}

void CClock::Start(void) {
  //_beginthread(OnTimer, 0, this);
  pthread_t thread;
  //pthread_create(&thread, NULL, OnTimer, (void *)this)
  pthread_create(&thread, NULL, OnTimer, (void *)this);
}

void CClock::Stop(void) {
  bStop = true;
}

void CClock::SetCallbackFunction(pfCallback cbFunc) {
  m_cb = cbFunc;
}

void *OnTimer(void* vp) {
  time_t t;
  CClock* p = (CClock*)vp;

  while (p->bStop!=false) {
    sleep(100);
    t = time(NULL);
    p->now = *localtime(&t);
    if (p->now.tm_sec == 0) {
      if (p->m_cb)
        p->m_cb();
    }
  }
}
