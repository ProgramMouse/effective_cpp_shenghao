#include "GameCharacterClasses.h"
using namespace std::placeholders;      // "_1"代表std::placeholders::_1

int main() {
    EvilBadGuy badGuy1(calcHealth);

    EyeCandyCharacter candy1(HealthCalculator);

    GameLevel currentLevel;
    auto clHealthFunc = std::bind(&GameLevel::health, &currentLevel, _1);
    EvilBadGuy badGuy2(clHealthFunc);

    return 0;
}