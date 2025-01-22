## Project 3: Hosting and Running the Webapp Stack on AWS Cloud (Lift and Shift)

## Overview
This project focuses on hosting and running a web application stack on the AWS cloud by adopting a Lift and Shift approach. The goal is to migrate the existing infrastructure to AWS, leveraging its services to ensure scalability, flexibility, and cost-effectiveness while modernizing the stack.

## Objectives
1. Flexible Infrastructure: Enable a scalable and flexible infrastructure to handle varying workloads.
2. Pay-as-You-Go Model: Reduce costs by utilizing AWS's pricing model.
3. Modernize the Stack: Use modern AWS services to enhance performance and manageability.
4. Automation: Implement Infrastructure as Code (IaC) for efficient deployment and management.

## AWS Services Used
1. Amazon EC2:
Hosts the following components of the application:
* Apache Tomcat server for the web application.
* RabbitMQ for message brokering.
* Memcached for caching.
* MySQL server for database management.

2. Elastic Load Balancer (ELB):
Distributes incoming traffic across EC2 instances to ensure high availability and fault tolerance.

3. Auto Scaling:
Dynamically adjusts the number of EC2 instances based on traffic and workload.

4. Amazon S3:
Stores static content, such as images, files, and backups.

5. Amazon Route 53:
Provides private DNS services for internal application communication.

6. AWS Identity and Access Management (IAM):
Manages user access and permissions to AWS resources.

7. AWS Certificate Manager (ACM):
Provides SSL/TLS certificates for secure communication.

8. GoDaddy DNS:
Maps the website name to the Elastic Load Balancer endpoint for public access.

## Infrastructure Design
# Architecture Diagram
The architecture includes:
EC2 instances behind an ELB, with Auto Scaling enabled for scalability.
S3 bucket for static asset storage.
Route 53 for DNS management.
RabbitMQ, Memcached, and MySQL running on dedicated EC2 instances.

## Key Features
1. Highly available and fault-tolerant design.
2. Pay-as-you-go cost optimization.
3. Secure communication via SSL/TLS certificates from ACM.
4. Automated scaling for seamless performance during traffic spikes.

## Flow of Execution
1. Login to AWS Account:
Access the AWS Management Console using your credentials.

2. Create Key Pairs:
Generate key pairs to securely access EC2 instances via SSH.

3. Create Security Groups:
Define security group rules to allow necessary inbound and outbound traffic.

4. Launch EC2 Instances Using User Data:
Use a bash script in the User Data field to automate instance setup during launch.

5. Update IP to Name Mapping in Route 53:
Configure Route 53 to map instance IP addresses to DNS names.

6. Build Application from Source Code:
Use Maven to build the application from the source code.

7. Upload Artifacts to S3 Bucket:
Store the built application artifacts in an S3 bucket for centralized access.

8. Download Artifacts to Tomcat EC2 Instance:
Retrieve the application artifacts from the S3 bucket and deploy them on the Tomcat server.

9. Set Up Elastic Load Balancer with HTTPS:
Configure the ELB to distribute traffic and secure it using SSL/TLS certificates from ACM.

10. Map ELB Endpoint to Website Name in GoDaddy DNS:
Update GoDaddy DNS records to point the website name to the ELB endpoint.

11. Verify:
Test the setup by accessing the website and verifying functionality, security, and performance.

## Conclusion
This project demonstrates the Lift and Shift approach to migrating a web application stack to AWS, ensuring scalability, cost-efficiency, and modernization. Automation via IaC further enhances deployment efficiency and manageability.

