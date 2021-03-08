import sys
import os

print(sys.argv)
print(os.curdir)
print(os.pardir)

print(os.path.abspath(os.curdir))
print(os.path.abspath(os.pardir))

