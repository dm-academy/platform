# platform
Platform team repository

## How to Use
Clone the repository in your home directory<br />
After that run the startup.sh script to install all dependency<br />
    This should install terraform and jenkins-x<br />
create a credentials directory in the platform directory and touch a new credentials.json file in the credentials directory<br />
In GCP go to to the following Navigation menu >> APIs & Services >> Credentials<br />
    Then go to Create credentials >> Service account key<br />
    Create a new service account with key type json<br />
    Create and download the json file<br />
    The place the json file into the credentials directory and rename it credentials.json<br />
    (Yes this is a bad way of doing this but it works for now)<br />
Run the following command: ```gcloud auth login``` and follow the instruction to authenticate
Change directory into terraform
Rename ```terraform.tfvars.ex``` to ```terraform.tfvars``` and replace the variables values with your variable values
Run the following commands:
```
        terraform init
        terraform plan
        terraform apply
```
Once that has completed, copy the gcloud output form terrafom to connect to your k8s cluster
then run jx install to install jenkins-x to your k8s cluster
