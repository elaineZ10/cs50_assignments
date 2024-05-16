#include <cs50.h>
#include <stdio.h>

int get_cents(void);
int calculate_quaters(int cents);
int calculate_dimes(int cents);
int calculate_nickles(int cents);
int calculate_pennies(int cents);

int main(void)
{
    int cents = get_cents();

    int quaters = calculate_quaters(cents);
    cents = cents - quaters * 25;

    int dimes = calculate_dimes(cents);
    cents = cents - dimes * 10;

    int nickles = calculate_nickles(cents);
    cents = cents - nickles * 5;

    int pennies = calculate_pennies(cents);
    cents = cents - pennies * 1;

    int coins = quaters + dimes + nickles + pennies;
    printf("%i\n", coins);
}

int get_cents(void)
{
    // prompt the user
    int cents;
    do
    {
        cents = get_int("Enter cents owed: ");
    }
    while (cents < 0);
    return cents;
}

int calculate_quaters(int cents)
{
    // calculate the number of quaters
    int quarters = cents / 25;
    return quarters;
}

int calculate_dimes(int cents)
{
    // calculate the number of dimes
    int dimes = cents / 10;
    return dimes;
}

int calculate_nickles(int cents)
{
    // calculate the number of nickles
    int nickles = cents / 5;
    return nickles;
}

int calculate_pennies(int cents)
{
    // calculate the number of pennies
    int pennies = cents / 1;
    return pennies;
}
