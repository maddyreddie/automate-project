# Problem Statement: Fully automated sample application environment using Ansible, Terraform, Chef and/or pure code to provision, manage and eventually destroy a minimum two-tier sample application of the applicant’s choice. The front-end URL/endpoint should be returned as an output and accessible once execution is complete.

This application environment is provisioned using Vagrant and used Ubuntu OS for deploying the application. For provisioning the server I've used IAAC tools like Ansible and Terraform. For Orchestrating used Ansible to ssh into the server and deploy the application.

# Setup Instruction Vagrant
    ```
        sudo apt-get install virtualbox
        sudo apt-get install vagrant
        cd #path to vagrantfile
        vagrant up --provider=virtualbox
    ```
    NOTE: for vagrant installation  (https://linuxize.com/post/how-to-install-vagrant-on-ubuntu-18-04/)(ubuntu/images/hvm-ssd/ubuntu-xenial-18.04-amd64-server)
  

# Setup Instructions Ansible
```Ansible is a configuration management tool, similar to Chef and Puppet. It allows for          performing logical configuration of infrastructure components, such as servers and network     switches. The configuration files in this repository can act as a template for your own Ansible projects, in order to get you started quickly. Once you've customized the  configuration files then new servers can be configured quickly — excluding their network configuration.```

    virtualenv ~/ansible
    source ~/ansible/source/bin/activate
    pip install ansible

# Ansible playbook's execution for this Application

## Using this repository

```
cd ~
git clone https://github.com/<username>/<repo-name>.git
```

## To execute playbooks

Simply run the following commands

```
cd ~/ansible/ansible/web/playbook/dev
# Run dev tasks
ansible-playbook dev.yml -vvv

# Run qa tasks
ansible-playbook qa.yml -vvv

# Run uat tasks
ansible-playbook uat.yml -vvv
```

    NOTE: The below instructions are compatable with ubuntu 18.04/18.x (Vagrant)(ubuntu/images/hvm-ssd/ubuntu-xenial-18.04-amd64-server)


# Provisioning using Ansible

 To Provision EC2 Instance On a AWS Cloud provider hope the required IAM permission required to launch the ec2 instance has been given and keys are configured on the machine using AWSCLI Client. Once the server is launched we can run dev,qa and uat tasks to deploy the application.

## To execute playbooks

Simply run the following commands

```
cd ~/ansible/ansible_ec2_launch/ec2/playbooks
# Run ec2_launch tasks
ansible-playbook ec2_launch.yml -vvv
```


# Provisioning using terraform.

## To execute TF files

Make sure terraform already installed.

```
 cd ~/ansible/terraform_ec2_launch/ec2
    terraform init
    terraform plan
    terraform apply
```

Destroy environments

```
 terraform destroy
```