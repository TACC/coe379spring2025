#include <stdlib.h>
#include <stdio.h>
#include "mpi.h"

int main() {
  MPI_Init(0,0);
  MPI_Finalize();
  return 0;
}
