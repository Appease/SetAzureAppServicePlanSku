![](https://ci.appveyor.com/api/projects/status/vlw71dgco17m93rn?svg=true)

####What is it?

An [Appease](http://appease.io) task template that sets an [Azure App Service plans](http://azure.microsoft.com/en-us/documentation/articles/azure-web-sites-web-hosting-plans-in-depth-overview/) sku.

####How do I install it?

```PowerShell
Add-AppeaseTask `
    -DevOpName YOUR-DEVOP-NAME `
    -TemplateId SetAzureAppServicePlanSku
```

####What parameters are required?

#####Name
description: a `string` representing the name of the App Service plan.

#####ResourceGroupName
description: a `string` representing the name of the resource group of the App Service plan.

#####Sku
description: a `string` representing the sku of the App Service plan  
known allowed values: `Free`, `Shared`, `Basic`, `Standard`, `Premium`
