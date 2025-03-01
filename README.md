# Learning Shell Scripting (Bash)
## Hello World
The .sh files can be run in defferent shells like bash, zsh, sh, etc, by specifying the shell in the terminal prompt. 
 
`bash hello-world.sh`

 `zsh hello-world.sh`
 
 `sh hello-world.sh` 

## Converting a shell script to a bash script
 1. Add `#!/bin/bash` in the beginning of the `.sh` file.
 2. Make the script executable by executing the `chmod` command `chmod u+x hello-world.sh`
 3. Execute the file by `./hello-world.sh`

Even if we add `#!/bin/bash` in the file, we can run the same file with different shells.

## 1. Reading values from user input
Prompts the user user to enter his/her name and outputs the input value in the terminal.
```
echo "Please enter your name:"
read name
echo "Hello, $name"
```

`name` is the variable name and the value of it outputs as `$name`

[code example](./1_read_values_user_prompts)

## 2. Variables & Constants
Variables can be defined with a name and the value. 

```
x = 23
```

> Once a variable assigned with a certain value, you can assign a value from a different type to it.
> 
> `x = "new value"`

Constants can be defined with the keyword `readonly`. 

```
readonly water_boiling_point = 100`
```

There are two ways to assign output of a linux command to a variable

1. `this_month=$(cal)`
2. ``this_month=`cal` ``

However the second method cannot be used to include output of nested commands. 

### Passing Command Line Arguments
Arguments can be passed in to the bash script in the command line after the script name. 

e.g: `<script-name.sh> <arg1> <arg2> ...`

[code example](./2_command_line_args)

### Special Bash Variables

```
$0      => the name of the bash script
$1..$n  => bash script arguments (i.e. $1 is the first argument...)
$$      => process id of the current shell
$#      => total number of arguments passed to the script
$@      => the value of all arguments passed to the script
$?      => the exit status of the last executed command
$!      => the process id of the last executed command
```

## 3. Arrays
Arrays can be normal (all elements with the same data type) or can be hybrid (with mixed data types)

### Access Array Elements
- To get the value of a specific element: `${arr1[3]}`
- To list all the elements: `${arr1[*]}`
- To display the number of elements in an array: `{#arr1[@]}`
- To change an element of an array `arr1[4] = "element5"`

### Append to Arrays
`arr1+=("new element")`

### Remove elements from a Array
- To remove a single element `unset arr1[3]`
- To remove all the elements `unset arr1`
  

## 4. Arithmetic Operations

### Addition and Substraction
```
n1=23
n2=3

total=$((n1 + n2))

difference=$((n1 - n2))
```

### Multiplication and Division
```
n1=5
n2=4

multiplied_val=$n1 * $n2

divided_val=$n1 - $n2
```
[addtion example](./3_arithmetic_operations)


### Power Operations
```
n1=2
n2=3

result=$(($n1 ** $n2))
```

### Modulus (Remainder)
```
n1=18
n2=4

result=$((n1 % n2))
```


## 5. Working with Strings

### Get number of characters in a string
```
name="John Doe"
echo ${#name}
```

This counts and prints all the characters in the variable `name` including spaces.

### Concatanate 
```
name="Area"
code=51

echo $name$code
```

### Finding location of a substring
```
name="John Doe"
word_to_find="Doe"
echo "$word_to_find is at $(expr index "$name" "$word_to_find")"
```

### Extracting Substrings
Substrings can be extracted from a string with `${<string>:<begining index>:<numb of chars>}`

e.g: If the string is *Bash scripting is fun*, to extract *script* from it, can use: 
```
sentence="Bash scripting is fun"
sentence=${sentense:5:6}`
```

Counting starts from `0` just like arrays. 

e.g: To extract *scripting is fun*
```
sentence="Bash scripting is fun"
sentence=${sentense:5}`
```

### Replacing substrings
Part of a string can be replaced by `${<string>/<old chars>/<new chars>}`

e.g: To replace the _fun_ with *powerful*
```
sentence="Bash scripting is fun"
sentence=${sentense/"fun"/"powerful"}`
```

### Delete substring
Part of a string can be deleted by replacing it with nothing. 

e.g: In the above example, if we want to remove the word _scripting_, we can do it like:
```
sentence="Bash scripting is fun"
${sentence/"scripting"}`
```

**To remove all the occurances of a substring:** 
e.g: To remove all the `-` from `1000-123-456`:
```
number=1000-123-456
number=${number//-}
```

### Convert UPPER & lower case letters
Convert to upper case:
```
name="john doe"
name=${name^^}
```

Convert to lower case:
```
name=JOHN DOE
name=${name,,}
```

If we use single `^` or `,` only the first letter will be changed.

To make specific characters either upper case or lower case:

`${name^^[jd]}`

`${name,,[OH]}`



## 6. Decision Making

```
if [ if condition ]; then
  # logic for the satisfied condition
elif [ else if condition ]; then
  # logic for the else if condition
else
  # logic for the else condition
fi
```


### Conditions

**Numbers:**

`$a -lt $b`  => less than

`$a -gt $b`  => greater than

`$a -le $b`  => less than or equal

`$a -ge $b`  => greater than or equal

`$a -eq $b`  => equal

`$a -ne $b`  => not equal



**Files:**

`-e $var`   => value (file path) in the variable exists

`-d $var`   => value (file path) in the variable exists and is a _directory_

`-f $var`   => value (file path) in the variable exists and is a regular file

`-L $var`   => value (file path) in the vriable exists and is a soft link



**Strings:**

`$a = $b`   => equal 

`$a != $b`  => not equal

`-z $a`     => string is empty


> All these conditions are available in the `man test` command




## 7. Loops

### For Loop

**C - Style**

```
for (( initialize; condition; increment/decrement)); do
  # logic when the condition met
done
```

_e.g:_

```
for (( i = 0; i < 10;  i++)); do
  echo "value of i is $i"
done
```


**List/Range Style**

```
for item in [ list ]; do
   # logic for each item
done
```

_e.g:_

```
for i in {0..9}; do
  echo "value of i is $i
done
```


