# Ansible

Using Ansible, we can implement Infrastructure as Code, ensuring consistency and reliability across our environments. This approach not only automates complex deployments but also saves significant time on future installations and updates.

Below I will make some remarks for the process of creating and running configurations for machines with Ansible it is not detailed instructions, but simply some remarks that can serve as reminders. 

## Audit tool

There were significant difficulties of configuring audit service.      
The biggest problem was that there were not so mach of documentation that would be helpful. Instead it took 3 solid days to figure out how to set simple conig file.      

The tricky bit was in using new recomended syntax and in particular `-F perm=` filter. Any line in config file with this filter throw an error. The errors printed to stderr were not descriptive and there was not much of information on what is going on and why error is trown any way. After three days of try-and-fail I figured out way around.             
The trick was in using new syntax and syscalls for watchig for specific event. At the end I still was have to connect to VM with ssh and check which syscalls are active on the Machine. The command  `ausyscall --dump` will print all available syscalls to stdout. I use [this web site](https://manpages.debian.org/trixie/manpages-dev/index.html) for syscall reference.      
I think proper testing of the config is required. The whole tool feels sketchy and non reliable.
