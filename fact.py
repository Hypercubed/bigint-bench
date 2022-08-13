#!/usr/bin/env python3
import sys

sys.setrecursionlimit(1500)

def factorial(n):
    z=1
    if n>1:
        z=n*factorial(n-1)
    return z

print(factorial(1000))