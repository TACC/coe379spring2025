#include <iostream>
using namespace std;

#include "mpi.h"

int main() {
  MPI_Init(0,0);
  MPI_Finalize();
  return 0;
}
