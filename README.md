# Lab 1
gcc -nostdlib -no-pie print_hello.s -o hello
./hello

# Task 1
gcc -no-pie Task_1.s print_ram.c -o task1
#run1
./task1

# Task 2
gcc -no-pie Task_2.s print2_ram.c -o task2
#run2
./task2

# Task 3
gcc -no-pie Task_3.s print3_ram.c -o task3
#run3
./task3

# Task 4
gcc -no-pie Task_4.s print4_ram.c -o task4
#run4
./task4
