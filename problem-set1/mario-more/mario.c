#include <cs50.h>
#include <stdio.h>

int main(void)
{
    // prompt height
    int height;
    do
    {
        height = get_int("Height: ");
    }
    while (height < 1 || height > 8);

    // building #
    for (int row = 1; row < height + 1; row++)
    {
        for (int space = height - row; space > 0; space--)
        {
            printf(" ");
        }
        for (int hash = 1; hash < row + 1; hash++)
        {
            printf("#");
        }
        
        printf("  "); // the 2 spaces in between

        for (int hash = 1; hash < row + 1; hash++) // building the left-aligned pyramid
        {
            printf("#");
        }

        printf("\n");
    }
}

