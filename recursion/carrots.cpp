/*
Example: https://open.kattis.com/problems/carrots
*/

#include <stdio.h>


using namespace std;

int main(int argc, char const *argv[])
{
    // move vars off the stack and into statically allocated memory
    static int cont, hpps;
    
    scanf("%d%d",&cont, &hpps);
    
    printf("%d\n", hpps);

    return 0;
}
