class Mutex {};

void lock(Mutex* pm);       // 锁定资源
void unlock(Mutex* pm);     // 释放资源