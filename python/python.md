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

### sequence datatypes

    * sequence :

        string :


        list : this method returns a list of numbers

```python
value = []
type(value)

ex: 

signals = ["red", "green", "blue"]
numbers = ["1", "2", "3", "4", "5"]
dummy_list = ["red", "1", "true"]



```

# pass
 it returns a empty function

### slicing

* slicing basically workout start:end:

ex:

numbers[::2]
numbers[1::2] # output 2,4,6,8.....

## append : insert value

## tuple: 

tuples also work like lists 

names = ("a", "b", "c)
names[0]
names[1::-1] ## print in a reverse order

tuples cannot be changed once initialized

if you know the size is fixed for variables, you can use tuple , in acse variable you want to change the size add or decreasing we go for the list .




### filter function

sum(list(filter(is_even,get_fibbonaci_sequence(max))))
result = list(filter(is_prime , range(1,10000)))
print(result)

## dictionary

it is basically key value pairs

```distionari of ipl teams

<variable_name> = {
    'key1': 'value1',
    .............
    ........
}



ipl_teams = {
    'hyd': 'sun rises',
    'mumbai': 'mumbai indians'
}

```
# access values 

```
ipl_teams['key1'] = 'value1'

ipl_teams['chenai'] = 'value2'

print(ipl_teams)
```

## loop trough dictionary

for city , name in ipl_teams.items():
    print (city, end=" ==>")
    print(name)

city ==> team name
------------------------
Hyderabad ==> team name
mumbai ==> team name

# loop through

for city in ipl_teams.keys():
    print(team_name)

for city in ipl_teams.values():
    print(team_name)

# copy dictionary

my_ipl_teams['delhi'] = 'delhi-capitals'
  



 
my_ipl_teams = ipl_teams.copy()

## set

* this is unique item 

courses = {'aws','azure','gcp','python'}

## calculator with 

* create  folder in github (readme.md)

* python -m venv .venv # command line

* source .venv/bin/activatea # for linux

* .venv/Scripts/activate # for windows

* selete python interpreter from .venv 

```
windows 

ctrl +shift + p   ==> command palette

mac 

<!-- cmd + shift + p ==>command palette -->

### usage:

* python calc.py <action> <num1> <number2>

* python calc.py div 10 5

## [link](https://www.perplexity.ai/search/how-to-add-VY3cte4WS5m1Ol012l6EJg)


* pipi install pylint 

>>>>>>>>pylint calc.py



































































