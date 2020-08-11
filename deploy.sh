folder_name="s3"
deployment_file="deploy.yaml"
param_file="param.json"

current_folder="mnt/c/Users/Farshid/source/repos/prancer-cloudformation-templates/"

deployment_path=$current_folder$folder_name/$deployment_file
param_path=$current_folder$folder_name/$param_file

aws cloudformation create-stack --stack-name myteststack --template-body file:///$deployment_path \
--parameters file:///$param_path

