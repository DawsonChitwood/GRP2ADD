#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>


int main(int argc, char * argv[]){
    char next[20][20]={{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},};
    char current[20][20]={{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0},
                          {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},};
    double test=0;
    while(true){
        //scanf("%lf", &test);
        for(int i=0;i<1000000000;i++){

        }
        for(int i=0; i<20;i++){
            for(int j=0;j<20;j++){
                printf("[%d]",current[i][j]);
            }
            printf("\n");
        }
        for(int i=0;i<20;i++){
            for(int j=0;j<20;j++){
                int temp=0;
                if(i==0){
                    if(j==0){
                        current[19][19]==1?++temp:temp;
                        current[19][j]==1?++temp:temp;
                        current[19][j+1]==1?++temp:temp;
                        current[i][19]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[i+1][19]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][j+1]==1?++temp:temp;
                    }
                    else if(j==19){
                        current[19][j-1]==1?++temp:temp;
                        current[19][j]==1?++temp:temp;
                        current[19][0]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][0]==1?++temp:temp;
                        current[i+1][j-1]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][0]==1?++temp:temp;

                    }
                    else{
                        current[19][j-1]==1?++temp:temp;
                        current[19][j]==1?++temp:temp;
                        current[19][j+1]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[i+1][j-1]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][j+1]==1?++temp:temp;

                    }
                }
                else if(i==19){
                    if(j==0){
                        current[i-1][19]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][j+1]==1?++temp:temp;
                        current[i][19]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[0][19]==1?++temp:temp;
                        current[0][j]==1?++temp:temp;
                        current[0][j+1]==1?++temp:temp;

                    }
                    else if(j==19){
                        current[i-1][j-1]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][0]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][0]==1?++temp:temp;
                        current[0][j-1]==1?++temp:temp;
                        current[0][j]==1?++temp:temp;
                        current[0][0]==1?++temp:temp;

                    }
                    else{
                        current[i-1][j-1]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][j+1]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[0][j-1]==1?++temp:temp;
                        current[0][j]==1?++temp:temp;
                        current[0][j+1]==1?++temp:temp;

                    }

                }
                else{
                    if(j==0){
                        current[i-1][19]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][j+1]==1?++temp:temp;
                        current[i][19]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[i+1][19]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][j+1]==1?++temp:temp;

                    }
                    else if(j==19){

                        current[i-1][j-1]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][0]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][0]==1?++temp:temp;
                        current[i+1][j-1]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][0]==1?++temp:temp;
                    }
                    else{
                        current[i-1][j-1]==1?++temp:temp;
                        current[i-1][j]==1?++temp:temp;
                        current[i-1][j+1]==1?++temp:temp;
                        current[i][j-1]==1?++temp:temp;
                        current[i][j+1]==1?++temp:temp;
                        current[i+1][j-1]==1?++temp:temp;
                        current[i+1][j]==1?++temp:temp;
                        current[i+1][j+1]==1?++temp:temp;

                    }
                }

                if(current[i][j]==0){
                    temp==3?next[i][j]=1:next[i][j];
                }
                else{
                    temp<2?next[i][j]=0:next[i][j];
                    temp>3?next[i][j]=0:next[i][j];
                    temp==3?next[i][j]=1:next[i][j];
                    temp==2?next[i][j]=1:next[i][j];
                }

            }
        }
        for(int i=0;i<20;i++){
            for(int j=0;j<20;j++){
                current[i][j]=next[i][j];
            }
        }
        for(int i=0;i<3;i++){
            printf("\n");
        }
    }
}
