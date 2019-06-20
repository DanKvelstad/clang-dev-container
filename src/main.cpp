#include "randomizer.hpp"
#include <iostream>
#include <chrono>
#include <thread>

int main()
{
    randomizer randomization;
    for (unsigned i=randomization.generate(5,10); i>0; i--)
    {
        std::cout << "hello world! (" << i << " times to go)\n";
        std::this_thread::sleep_for(
            std::chrono::milliseconds(
                randomization.generate(100,1000)
            )
        );
    }
}