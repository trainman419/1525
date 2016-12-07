// a.c
#include "a.h"

int doA() {
#ifdef QUUX
  return 42;
#else
  return 7;
#endif
}
