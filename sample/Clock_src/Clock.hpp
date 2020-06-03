#include <time.h>
typedef void (*pfCallback)();
class CClock {
  public:
    pfCallback m_cb;
    struct tm now;
    int bStop;
    CClock(void);
    ~CClock(void);
    void Start(void);
    void Stop(void);
    void SetCallbackFunction(pfCallback cbFunc);
};
