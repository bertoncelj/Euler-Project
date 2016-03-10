#include <stdio.h>

int a,b,c;
int n =1000;

int main(){

for (c=1;c<n;c++){
	for(b=1;b<c;b++){
  		for(a=1;a<b;a++){

         if(a*a+b*b == c*c && a<b && b<c&&a+c+b==n){
         	printf("A:%d,B:%d,C:%d\n",a,b,c);
         	printf("%d",a*b*c);
         }

}}
}


	return 0;
}