#include "randomizer.hpp"

randomizer::randomizer()
: generator(random_device())
{
}

randomizer::~randomizer()
{
}

unsigned randomizer::generate(unsigned lower, unsigned upper)
{
    std::uniform_int_distribution<std::mt19937::result_type> distribution(lower,upper);
    return distribution(generator);
}