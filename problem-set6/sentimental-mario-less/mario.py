# get the input from user until correct
while True:
    try:
        height = int(input("Height: "))
        if (height >= 1) and (height <= 8):
            break
    except ValueError:
        print("", end="")

# building the pyramid
for i in range(1, height + 1):
    print(" " * (height - i) + "#" * i)
