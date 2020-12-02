#include <stdio.h>
#include <immintrin.h>

int _asm();

int main()
{
  __m128 vec1 = _mm_set_ps(4.0, 5.0, 3.9, 4.2);
  __m128 vec2 = _mm_set_ps(1.0, 3.0, 2.3, 2.4);
  __m128 sum = _mm_add_ps(vec1, vec2);
  printf("Returned : %d\n",_asm());
  return 0;
}
