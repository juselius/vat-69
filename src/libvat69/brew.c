#include <stdio.h>
#include <stdlib.h>
#include "bottle.h"

int brew_beer(float barley, float hops, float water) {
    float vol;
    int *bottles;
    int i, n, nbottles;

    if (water/barley > 10.0) {
        printf("There is less water in the Atlatic...\n");
    } else if (water/barley < 2.5) {
        printf("Are you making porridge?\n");
    }
    if (water/hops > 20.0) {
        printf("Are you kidding me? Budwiser?\n");
    } else if (water/hops < 10.0) {
        printf("Whoa! Feeling bitter?\n");
    }

    vol = water * 0.9;
    nbottles = vol/0.33;
    bottles = (int *) malloc((sizeof(float) * nbottles));

    bottle(vol, nbottles, bottles);
    n = 0;
    for (i=0; i < nbottles; i++) {
        if (bottles[i] == 1) n++;
    }
    free(bottles);
    return n;
}
