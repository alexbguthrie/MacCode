def factorial(n):
    """
    Calculates the factorial of a non-negative integer.
    """
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

def main():
    print("Calculating factorials!")
    for i in range(10):
        print(f"The factorial of {i} is {factorial(i)}")

if __name__ == "__main__":
    main() 