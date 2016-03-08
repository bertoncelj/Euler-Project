#include <stdio.h>

int main()
{
   int n, i = 3, count, c;
   int maxPrime=10 001;
 

 
   for ( count = 2 ; count <= maxPrime ;  )
   {
      for ( c = 2 ; c <= i - 1 ; c++ )
      {
         if ( i%c == 0 )
            break;
      }
            if ( c == i )
      {
         printf("%d\n",i);
         count++;
      }
      i++;
   }
 
   return 0;
}