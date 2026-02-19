# How to run the script

After cloning this repository, run:

    ./setup_project.sh

in a shell terminal and respond to the prompts as prompted in the terminal.

Your answers to these prompts will matter significantly, given their role in the system.  
For instance, you'd want to specify the attendance thresholds in case you want to make updates on the default values.

---

# To trigger the archive feature

Run the script:

    ./setup_project.sh

Then specify the name to be attached to the directory.

After clicking Enter, press **Ctrl + C**.  
This sends the SIGINT signal that triggers the archive feature.

After the signal is trapped, you will immediately see a message that your incomplete directory is getting bundled (archived).

However, if you send the signal before specifying the name to attach to your directory, you will receive a message telling you that we cannot bundle or archive a directory because it hasn't been created.
