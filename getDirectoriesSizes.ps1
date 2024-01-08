$path = "C:\Users\Schlo\AppData\Local"
#$path = "C:\Users\Schlo\AppData\Local\Packages"
#$path = "C:\Users\Schlo\Documents"

$folders = Get-ChildItem -Path $path -Directory

ForEach($folder in $folders) {
	$size = (Get-ChildItem -Path $folder -Recurse | Measure-Object -Property Length -Sum).Sum / 1GB
	
	if($size -ge 1) {
		$folder.FullName
		$size
	}
}