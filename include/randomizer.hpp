#pragma once

#include <random>

class randomizer
{

public:

    randomizer();
    ~randomizer();

    unsigned generate(unsigned lower, unsigned upper);

private:

    std::random_device  random_device;
    std::mt19937        generator;

};