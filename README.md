# platform
Platform team repository
### Platform System Description

A developed platform to deploy microservices to a Kubernetes cluster);

### What does it do?
- The platform inports individual Docker containers/microservices from GitHub repositories of the other service teams and pushes to a Kubernetes cluster.  The 	Jenkins CI/CD pipeline then allows the service team to make commits and auto deploys 	these changes to the cluseter.

### How is it built?

- We stand up (create) the K cluster within the GC platform using Terraform.  To install Jenkins X (JX), it must be installed first via a ubunt VM.  From there, we run the JX  	command to install a JX platform to install to our K cluseter.  Reference JX tutorials for 	specs.  Once installed, import service teams containers to your K8 cluster.


### Team Journey:

- Team: Jim B, Su D, Sheng X, Yumna A.
- Challanges:  We started looking at GitLab first as the CI/CD pipeline but could not figure that out so we looked into JX and utilzed it instead.  Overall, choosing the right 	tools/options for our project.  Custom/define editor plugins;
- Ah Ha moment:  When JX started working, auto creates pipeline. (3 words of code)Github has a published issues log
- Issue:  JX needed a patch before it started working. (Known issue published within JX)
- Current Status: Created successful pipeline, tested with SVC 3 team.  Future enhancements in progress


## How to Use
Dependency on your local machine:
* Virtualbox
* Vagrant

Start up a vagrant vm using the Vagrantfile
Clone the repository in your home directory<br />
* After that run the startup.sh script to install all dependency<br />
    * This should install terraform and jenkins-x<br />
* create a credentials directory in the platform directory and touch a new credentials.json file in the credentials directory<br />
* In GCP go to to the following Navigation menu >> APIs & Services >> Credentials<br />
    * Then go to Create credentials >> Service account key<br />
    * Create a new service account with key type json<br />
    * Create and download the json file<br />
    * The place the json file into the credentials directory and rename it credentials.json<br />
    * (Yes this is a bad way of doing this but it works for now)<br />
* Run the following command: ```gcloud auth login``` and follow the instruction to authenticate
* Change directory into terraform
* Rename ```terraform.tfvars.ex``` to ```terraform.tfvars``` and replace the variables values with your variable values
* Run the following commands:
```
        terraform init
        terraform plan
        terraform apply
```

* Once that has completed, copy the gcloud output form terrafom to connect to your k8s cluster
* then run jx install to install jenkins-x to your k8s cluster
* then run jx install to install jenkins-x to your k8s cluster



## Diagram
![JenkinsX Architecture Source: https://jenkins-x.io/architecture/diagram/](https://jenkins-x.io/images/ArchitectureStaticJenkins.png)

