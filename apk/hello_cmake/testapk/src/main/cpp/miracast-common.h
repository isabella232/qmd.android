/*
 */

#ifndef NATIVE_MIRACAST_COMMON_H
#define NATIVE_MIRACAST_COMMON_H

#include <SLES/OpenSLES.h>
#include <SLES/OpenSLES_Android.h>

//#include "android_debug.h"
//#include "debug_utils.h"
//#include "buf_manager.h"

/*
 * Miracast operating mode control...
 */
#define MIRACAST_READY_TO_CONNECT       0
#define MIRACAST_READY_TO_PRESENT       1

#define SLASSERT(x)   do {\
    assert(SL_RESULT_SUCCESS == (x));\
    (void) (x);\
    } while (0)



/*
 * flag to enable file dumping
 */
//#define ENABLE_LOG  1

#endif //NATIVE_MIRACAST_COMMON_H
