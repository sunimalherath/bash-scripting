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
