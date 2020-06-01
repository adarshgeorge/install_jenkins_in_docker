## Setup Jenkins using Docker in EC2 Instance

![alt HelloWorld]()

**Userdata**

```
#!/bin/bash
yum install git -y
git clone https://github.com/adarshgeorge/install_jenkins_in_docker.git
cd userdata-jenkins
chmod +x userdata.sh 
./userdata.sh
```

Obtain Initial Administrator Password. 

```
$ cat /home/ec2-user/jenkins-token.txt

```

Browse hostname or IP with port 8080


![alt HelloWorld]()

That's it!!