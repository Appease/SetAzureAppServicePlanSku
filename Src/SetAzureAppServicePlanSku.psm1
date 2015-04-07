# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'
Import-Module 'C:\Program Files (x86)\Microsoft SDKs\Azure\PowerShell\ResourceManager\AzureResourceManager' -Force -RequiredVersion '0.8.8'

function Invoke(

    [string]
    [ValidateNotNullOrEmpty()]
    [Parameter(
        Mandatory=$true,
        ValueFromPipelineByPropertyName=$true)]
    $Name,

    [string]
    [ValidateNotNullOrEmpty()]
    [Parameter(
        Mandatory=$true,
        ValueFromPipelineByPropertyName=$true)]
    $ResourceGroupName,

    [string]
    [ValidateNotNullOrEmpty()]
    [Parameter(
        Mandatory=$true,
        ValueFromPipelineByPropertyName=$true)]
    $Sku
){

    $ApiVersion = '2014-04-01'
    $ResourceType = 'Microsoft.Web/serverFarms'

    AzureResourceManager\Set-AzureResource `
    -Name $Name `
    -ResourceGroupName $ResourceGroupName `
    -ResourceType $ResourceType `
    -ApiVersion $ApiVersion `
    -PropertyObject @{sku=$Sku}
}

Export-ModuleMember -Function Invoke
