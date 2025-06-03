#back slash '\' is used to remove special characters.
#!/bin/bash
# Purpose: Demonstrate the use of backslash to escape special characters in shell

echo \"Hello World\"            # Output: "Hello World"
echo It\'s a sunny day         # Output: It's a sunny day
echo The variable is \$HOME    # Output: The variable is $HOME
echo \`date\`                  # Output: `date`
echo This is a backslash: \\   # Output: This is a backslash: \
echo Do not expand this wildcard: \*   # Output: Do not expand this wildcard: *
echo What\?                   # Output: What?
echo Pattern: \[A-Z\]         # Output: Pattern: [A-Z]
echo This is a test \(debug mode\)   # Output: This is a test (debug mode)
echo Use the variable like this: \${var\}   # Output: Use the variable like this: ${var}
echo This is not a pipe: \|   # Output: This is not a pipe: |
echo This is not a comment: \#Important   # Output: This is not a comment: #Important
echo Don\'t run in background: Hello\ &   # Output: Don't run in background: Hello &
echo \<input\> and \>output\>   # Output: <input> and >output>


