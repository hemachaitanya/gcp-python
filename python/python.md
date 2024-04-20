* hacker rank and leetcode for practising purposes.

* python is dynamic type language

* we cannot give datatype

* toggle add break point (using f9 ) and f10 is exicure line by line in the program

* 3 types of casings  in variables

* python does not have constant

* python use upper case variable names

    * pascal (MyName)
    
    * camel (java) myName
    
    * snake (python)my__name
    
## conditional statements in python 


```python

Number = 10
name = "python"
other_name = "py"
is_good = True

```
[link refer](https://www.programiz.com/python-programming/operators)

num1 = 10

num2 = 5

print(num1 + num2)

print(num1 - num2)

### python

num1 + num2 
num1 - num2
num1 / num2
num1 % num2
num1 * num2


exit()


## operator precedence

#### BODMAS 

[refer link](https://pythongeeks.org/python-operator-precedence/)

### while

```yaml
while "<expression>":
    body ....
    ........
    ...

example

index = 1
while index <=10:
    print(index)
    index += 1
```

* one while loop consists inside of the while loop one or more while loops and one or more if loops but its not a good idea

* continue means remaining conditions are skipped and start from starting on words

### for loop

```yaml
for item in <collection/sequence>:
    body ...


example

sum = 0
for number in range(1,1000):
    if number % 3 == 0 or number % 5 == 0:
        sum += number
    print(sum)
```

* in while loop we add extra condition (finaace condition)
 but in the for loop it automatically takes the loop in that range


# function

* function is a reusable block of code

function <nameof function>(arg1,arg2........):
     .....
     ........
     return <value>

example:

 def add(x,y):

### docstring in python

* this python module(file,py)   will  have the reusable  function



```python
"""
def is_even(number: int):
    args:
      number: number passed
    returns:
      True if even, False otherwise
    usage:
      is_even(52)
      return True
"""
# gobal result some times we use

if number <= 0:
    return False
    result = number%2 == 0
    return result
# call the function
number = 19
if is_even(number):
    print("even number")
print(result)
```

* the functions we cannot give names like num1=2 , numb2 = 3 this type of function is called possisionalarguments 

* while the concept of "positional arguments" relates to how arguments are passed to functions based on their position, "anonymous" or "lambda" functions refer to functions without names.

## interesting function

* installing pip install heartrate

* installing pip install snoop

#### above functions are used to debugging or tracing


















