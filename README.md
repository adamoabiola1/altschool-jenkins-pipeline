# To run this terraform code, follow the steps listed below carefully.
# Note : The code have been provision to run on AWS

# Step 1: create a bucket and keypair on AWS that matches your terraform values

# Step 2: cd into terraform-modules directory and run these commands on your terminal
## terraform init
## terraform validate
## terraform plan
## terraform apply --auto-approve
## your output should look like the image below
![Server Room](image1.png "output-1")
<br>

# Step 3: pick your ip from the terraform output and add :8080 i.e http://54.***.**.*62:8080/ to set up your jenkins-pipeline. Create a Jenkins Server with all the dependencies, libraries and packagies needed.
## A successful output should look like the image below
![Server Room](image2.png "output-2")
<br>

# Step 4: set up your github and aws Iam credentials use the jenkins-continuous-pipeline module to run your first build.
# Note it takes about 15 - 20mins for your cluster to build. Your eks console should display a similar image to this.
![Server Room](image3.png "output-3")
<br>

# Also check your ec2 dashboard for similar image
![Server Room](image4.png "output-4")
<br>

# Use kubectl get nodes and kubectl get pods to view the state of your nodes and pods.
![Server Room](image5.png "output-5")
<br>
![Server Room](image6.png "output-6")
<br>

# 5. Test that the application is running, your default site should be welcome to nginx.

# 7. update and upgrade the nodes then install helm chart to deploy your apps on the nodes. i.e myapp below
![Server Room](image7.png "output-7")
<br>

![Server Room](image8.png "output-8")
<br>

![Server Room](image9.jpg "output-9")
<br>

## 6. Destroy infrastructure using terraform destroy --auto-approve.


