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

## Arrays
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
  

## Arithmetic Operations

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



