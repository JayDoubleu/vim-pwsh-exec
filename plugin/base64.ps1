[cmdletbinding()]
param(
    [Parameter(ValueFromPipeline)]
    [String]
    $InputObject
)

begin {
    $StringBuilder = [System.Text.StringBuilder]::new()
}
process {
    $StringBuilder.AppendLine($InputObject) | Out-Null
}

end {
    $PipelineContent = $StringBuilder.ToString().TrimEnd()
    [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($PipelineContent))
}
