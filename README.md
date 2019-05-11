# platform
Platform team repository
### Platform System Description

A developed platform to deploy microservices to a Kubernetes cluster);

### What does it do?
- The platform inports individual Docker containers/microservices from GitHub repositories of the other service teams and pushes to a Kubernetes cluster.  The 	Jenkins CI/CD pipeline then allows the service team to make commits and auto deploys 	these changes to the cluseter.

### How is it built?

- We stand up (create) the K cluster within the GC platform using Terraform.  To install Jenkins X, it must be installed first via a ubunt VM.  From there, we run the JX 	command to install a JX platform to install to our K cluseter.  Reference JX tutorials for 	specs.  Once installed, import service teams containers to your K8 cluster.


### Team Journey:

- Team: Jim B, Su D, Sheng X, Yumna A.
- Challanges:  We started looking at GitLab first as the CI/CD pipeline but could not figure that out so we looked into JX and utilzed it instead.  Overall, choosing the right 	tools/options for our project.  Custom/define editor plugins;
- Ah Ha moment:  When JX started working, auto creates pipeline. (3 words of code)Github has a published issues log
- Issue:  JX needed a patch before it started working. (Known issue published within JX)
- Current Status: Created successful pipeline, tested with SVC 3 team.  Future enhancements in progress
