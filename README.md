#How to run the script:

After cloning this repository, run ./setup_project.sh in a shell terminal and respond to the prompts as prompted in the terminal. Your answers to these prompts will matter significantly, given their role in the system. For instance, you'd want to specify the attendance thresholds in case you want to make updates on the default values.

#To trigger the archive feature:

Run the script by writing ./setup_project.sh and then specify the name to be attached on the directory. After clicking enter, feel free to then click Ctrl+C, which will send the SIGINT signal that triggers the archive feature. After the signal is trapped, you will immediately see the message that your incomplete directory is getting bundled (archived). However, if you send the signal before specifying the name to attach on your directory, then you'll receive a message telling you that we can't bundle or archive a directory because you hadn't created it.
