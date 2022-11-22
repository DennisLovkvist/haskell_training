ghc -o main problem_2.hs  -dynamic;
rm *.hi;
rm *.o;
./main;