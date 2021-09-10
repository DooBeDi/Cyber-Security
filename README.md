[README.md](https://github.com/DooBeDi/Cyber-Security/files/7141437/README.md)

# Cyber-Security
## Automated ELK Stack Deployment

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!\Desktop\Cyber_Portfolio\Images\Cloud_Security_Diagram.PNG

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YML Playbook file may be used to install only certain pieces of it, such as Filebeat.

  - install-elk.YML
  - filebeat-playbook.YML
  - filebeat-config.YML
  - metricbeat-playbook.YML
  - metricbeat-config.YML

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly robust, in addition to restricting access to the network. Load balancer provides a website an external IP address that is accessed by the internet.The load balancer receives any traffic that comes into the website and distributes it across multiple servers. As the website receives more traffic, more servers can be added to the group ("pool") of servers that the load balancer has access to. This helps distribute traffic evenly among the servers and mitigates DoS attacks.

The jump box sits in front of other machines that are not exposed to the public internet. It controls access to the other machines by allowing connections from specific IP addresses and forwarding to those machines. A jump box is essentially identical to a gateway router. Focusing traffic through a single node makes it easier to implement routing logic and design networks. By focusing on the interactions between the routers instead of all of the machines, we only have to worry about a few connections between a few machines, rather than connections between all machines.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the system metrics and system files.

Metricbeat makes it easy to collect specific information about the machines in the network. Filebeat enables analysts to monitor files for suspicious changes

The configuration details of each machine may be found below.

| Name                 | Function                         | Static IP Address | Operating System |
|----------------------|----------------------------------|-------------------|------------------|
| Jump-Box-Provisioner | Gateway                          | 10.0.0.5          | Linux            |
| RedWatchDog-ElkStack | Intrusion Detection System (IDS) | 10.1.0.4          | Linux            |
| Web1                 | Virtual Web Server               | 10.0.0.8          | Linux            |
| Web2                 | Virtual Web Server               | 10.0.0.7          | Linux            |
| Web3                 | Virtual Web Server               | 10.0.0.9          | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 68.0.136.125

Machines within the network can only be accessed by the Jump-Box_Provisioner.
- 10.0.0.5

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Address |
|----------------------|---------------------|--------------------|
| Jump-Box-Provisioner | Yes                 | 68.0.136.125       |
| RedWatchDog-ElkStack | No                  | 10.0.0.5           |
| Web1                 | No                  | 10.0.0.5           |
| Web2                 | No                  | 10.0.0.5           |
| Web3                 | No                  | 10.0.0.5           |
| Load Balancer        | Yes                 | Any                |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous. This will ensure our provisioning scripts run identically everywhere. This will further ensure our automated configurations will do exactly the same thing every time they run, eliminating as much variability between configurations as possible.

The playbook implements the following tasks:
- Configure Elk VM with Docker
- Install docker.io
- Install python3-pip
- Install Docker python module
- Allows VM to use more memory
- Download and launch a docker elk container
- Enable service docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

!\Desktop\Cyber_Portfolio\Images\Elk_Docker_PS_Output.PNG

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.7
- 10.0.0.8
- 10.0.0.9

We have installed the following Beats on these machines:
- filebeat
- metricbeat

These Beats allow us to collect the following information from each machine:
Filebeat collects data about the file system. Filebeat has modules for observability and security data sources that simplify the collection, parsing, and visualization of common log formats down to a single command. They achieve this by combining automatic default paths based on your operating system. Common filebeat data would be login attempts

!\Desktop\Cyber_Portfolio\Images\Filebeat_WebLogin_Test

Metricbeat collects machine metrics, such as CPU usage. A metric is simply a measurement about an aspect of a system that tells analysts how "healthy" it is.Common metrics is CPU usage: The heavier the load on a machine's CPU, the more likely it is to fail. Analysts often receive alerts when CPU usage gets too high.

!\Desktop\Cyber_Portfolio\Images\Metricbeat_WebLoad_Test.PNG

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the "install-elk.YML" and "webserver-playbook.YML" file to "/etc/ansible"
- Create a folder called "files" in the /etc/ansible" directory and copy the "filebeat-config.YML" and "metricbeat-config.YML"
- Create a folder called "roles" in the /etc/ansible" directory and copy the "filebeat-playbook.YML" and "metricbeat-playbook.YML"
- Update the hosts.txt file to include:

[webservers]                                                                            10.0.0.7 ansible_python_interpreter=/usr/bin/python3
10.0.0.8 ansible_python_interpreter=/usr/bin/python3
10.0.0.9 ansible_python_interpreter=/usr/bin/python3                                         [elk]                                                                                        10.1.0.4 ansible_python_interpreter=/usr/bin/python3

- Run the playbook "install-elk.YML", and navigate to "http://[your.ELK-VM.External.IP]:5601/app/kibana" to check that the installation worked as expected.
- Run the playbooks "metricbeat-playbook.YML" and " filebeat-playbook.YML" located in "/etc/ansible/roles" to install metricbeat and filebeat.
- Navigate to "http://[your.ELK-VM.External.IP]:5601/app/infra#/logs/stream" and "http://[your.ELK-VM.External.IP]:5601/app/infra#/infrastructure/inventory"to check that the filebeat and metricbeat installation worked as expected.

## Notes: IP addresses will differ and will need to be updated to your specific addresses.
##       To run a playbook use command "ansible-playbook [name of play book].YML"
##       Both metricbeat and filebeat config files will need to be updated to have the elk VM IP address as the host. Line 1105/1106 and 1805/1806 in "filebeat-config.YML". Line 62/63 in "metricbeat-config.YML". 
##       Insure "install-elk.YML" has correct "remote_user:"
##       
