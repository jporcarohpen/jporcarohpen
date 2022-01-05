# Commands

## Apply Plan 
```ps
PS C:\> terraform init
PS C:\> terraform validate
PS C:\> terraform plan -out plan.tfplan
PS C:\> terraform apply "plan.tfplan"
PS C:\> 
```

## Apply Plan and replace resources
```ps
PS C:\> terraform init
PS C:\> terraform validate
PS C:\> terraform plan -out plan.tfplan
PS C:\> terraform apply -replace="module.secret1.aws_secretsmanager_secret.secret"
PS C:\> 
```

## Destroy resources
```ps
PS C:\> terraform init
PS C:\> terraform validate
PS C:\> terraform destroy
PS C:\> 
```
