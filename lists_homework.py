import random
import time


def get_array_length(count):
    while True:
        try:
            print('Enter length of {0} array:'.format(count))
            length = int(input())
            while True:
                try:
                    print('Enter max number for random in {0} array:'.format(count))
                    item = int(input())
                    break
                except ValueError:
                    print('Please enter number, not something else \n')
                continue
            return [length, item]
        except ValueError:
            print('Please enter number, not something else \n')
            continue


def array_generation(lst1, length, top):
    for i in range(0, length):
        lst1.append(random.randint(0, top))


def list_compare(first, second):
    global same
    for i in sorted(set(first)):
        if i in sorted(set(second)):
            same.append(i)


list1 = []
list2 = []
same = []
array1_len = get_array_length('first')
array2_len = get_array_length('second')
start_time = time.time()
array_generation(list1, array1_len[0], array1_len[1])
array_generation(list2, array2_len[0], array2_len[1])
list_compare(list1, list2)
print(f"first list's elements {sorted(list1)}\nsecond list's elements {sorted(list2)}\ncommon unique "
      f"elements {same}\ncount of elements in common list {len(same)}")
print("counting was done in ---{0:.3} milliseconds ---".format((time.time() - start_time)*1000))
