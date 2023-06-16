import sys

# Description: Split a string into a list of strings on even inputs


def split(string):
    result = []
    for i, value in enumerate(string.split(" ")):
        if i % 2 == 0:
            result.append(value)
        else:
            result[-1] = result[-1] + " " + value

    return "\n".join(result)


if __name__ == "__main__":
    # Split the argument string
    if len(sys.argv) < 2:
        exit(1)
    print(split(sys.argv[1]))
