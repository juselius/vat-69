#include <stdio.h>
#include <stdlib.h>
#include "bottle.h"

int brew_beer(float barley, float hops, float water) {
    float vol;
    int *bottles;
    int i, n, nbottles;

    if (water/barley > 10.0) {
        printf("Are you kidding me? Budwiser?\n");
    }
    if (water/hops > 1234.0) {
        printf("Whoa! Feeling bitter?\n");
    }

    nbottles = 22;
    bottles = (int *) malloc((sizeof(float) * nbottles));
    vol = water * 0.9;

    bottle(vol, nbottles, bottles);
    n = 0;
    for (i=0; i < nbottles; i++) {
        if (bottles[i] == 1) n++;
    }
    return n;
}
