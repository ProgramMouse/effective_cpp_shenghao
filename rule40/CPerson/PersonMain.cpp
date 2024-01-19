#include "CPerson.h"

int main() {
    DatabaseID id1;
    IPerson* person1 = new CPerson(id1);
    delete person1;
    return 0;
}