#########Flávio Azevedo
#########Set ExecutionPolicy Unrestricted
$lista_ip = import-csv lista_ip.csv
$OutArray = @()
Import-Csv lista_ip.csv |`
ForEach-Object { 
    try {
        $remote = $_.remoteHost
        $porta = $_.port
        $socket = new-object System.Net.Sockets.TcpClient($remote, $porta)
    } catch [Exception] {
        $objt = "" | Select "remoteHost", "port", "status"
        $objt.remoteHost = $remote
        $objt.port = $porta
        $objt.status = "failed"
        Write-Host $objt
        $outarray += $objt
        $objt = $null
        return
    }
    $objt = "" | Select "remoteHost", "port", "status"
    $objt.remoteHost = $remote
    $objt.port = $porta
    $objt.status = "success"
    Write-Host $objt
    $outarray += $objt
    $objt = $null
    return
}
$outarray | export-csv -path "resultado.csv" -NoTypeInformation
