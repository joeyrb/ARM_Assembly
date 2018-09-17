// Example: https://open.kattis.com/problems/cold
#include <stdio.h>

int main() {
    int ntemps, curtemp, count=0;

    scanf("%d", &ntemps);

    do {
        scanf("%d", &curtemp);
        if(curtemp<0)
            count++;
    }
    while(--ntemps>0);

    printf("%d\n", count);

    return 0;
}