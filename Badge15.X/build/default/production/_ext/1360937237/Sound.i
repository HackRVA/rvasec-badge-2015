# 1 "../src/Sound.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../src/Sound.c"
# 1 "../src/Sound.h" 1



void getNextSample(char* sample_i, char* sample_val);
# 2 "../src/Sound.c" 2



char sample_a[] = {1,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0};
void getNextSample(char* sample_i, char* sample_val)
{
    *sample_val = sample_a[*sample_i];

    *sample_i = *sample_i + 1;

    if (*sample_i >= 24)
    {
        *sample_i = 0;
    }
}
