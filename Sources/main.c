/*
mac 
gcc -Icache/ -I/Users/IbrA/.choosenim/toolchains/nim-1.4.2/lib -Ilib/cSpecOps/mathOps -Ilib/cSpecOps/logOps cache/@mprog.nim.c cache/stdlib_io.nim.c cache/stdlib_system.nim.c lib/cSPecOps/mathOps/cMathOps.c lib/cSpecOps/logOps/cLogOps.c Sources/main.c -o bin/prog
win 
gcc -Icache/ -IC:\Users\K\nim-1.4.4\lib -Ilib/cSpecOps\mathOps -Ilib/cSpecOps/logOps cache\@mprog.nim.c cache\stdlib_io.nim.c cache\stdlib_system.nim.c lib/cSpecOps/mathOps/cMathOps.c lib/cSpecOps/logOps/cLogOps.c Sources/main.c -o bin/prog.exe

createDLL
gcc -c  .\lib\cSpecOps\logOps\cLogOps.c -o obj\cLogOps.o
gcc -c  .\lib\cSpecOps\mathOps\cMathOps.c -o obj\cMathOps.o
gcc -shared -o .\bin\cSpecOps.dll .\obj\cMathOps.o .\obj\cLogOps.o

*/
#include "prog.h"

int main() {
    NimMain();
    nim_enter();
    return 0;
}