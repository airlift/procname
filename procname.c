#include <sys/prctl.h>
#include <stdlib.h>

void __attribute__ ((constructor)) procname_init()
{
   const char *name;
   if ((name = getenv("PROCNAME"))) {
      prctl(PR_SET_NAME, name);
   }
}
