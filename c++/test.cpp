#include <chrono>
#include <thread>
#include <iostream>

long sumto(long n) {
  if(n > 0)   {
//    std::this_thread::sleep_for(std::chrono::milliseconds(1));
    return n + sumto(n - 1);
  }
  return 1;
}

uint16_t fib(int n) {
  uint16_t a = 1;
  uint16_t b = 1;
  uint16_t tmp;

  for (int i = 0; i < n; i++) {
    tmp = a;  
    a = b;
    b = tmp + b;
  }

  return b;
}

int primes(int n) {
  int factors = 0;
  int primes = 0;

  for (int i = 1; i < n;  i++) {
    factors = 0;
    for (int j = 1; j <= i; j++) {
      if (i % j == 0) factors++;
    }

    if (factors == 2) primes++; 
  }

  return primes;
}

int main() {
  std::cout << primes(100000) << std::endl;
  return 0;
}
