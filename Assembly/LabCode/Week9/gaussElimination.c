#include <stdio.h>

#define N 3

void printMatrix(float A[N][N], float vector[N][1]);

int main(void) {
    int i, j, k;
    float p[N+1], A[N][N] = {{2, 1, 4},
                              {3, 4, 2},
                              {7, 5, 8}};
    float vector[N][1] = {{6},{3},{5}};

    printMatrix(A, vector);


    for (i = 0; i < N; i++) {
      for (j = i + 1; j < N; j++) {
        for (k = 0; k < N; k++) {
          p[k] = -(A[i][k]/A[i][i])*A[j][i];
          p[N] = -(vector[i][0]/A[i][i])*vector[j][0];
        }
        for (k = 0; k < N; k++) {
          A[j][k] = p[k] + A[j][k];
        }
        vector[i][0] = p[N] + vector[i][0];
        printMatrix(A, vector);
      }
    }
    return 0;
}

void printMatrix(float A[N][N], float vector[N][1]) {
  int i, j;
  for(i=0; i < N; i++) {
      for(j=0; j < N; j++) {
          printf("%10f ", A[i][j]);
      }
      printf(": %10f\n", vector[i][0]);
  }
  printf("\n");
}
