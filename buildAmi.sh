
#!/bin/bash

packer build \
    -var 'aws_access_key='\
    -var 'aws_secret_key = '\
    -var 'aws_region=us-east-1'\
    -var 'subnet_id=subnet-074e2dd5add4cc8d0b' \
    -var 'source_ami=ami-09e67e426f25ce0d7'\
    ami.json
