# Check Downloads Are Complete and Uncorrupted

when downloading large files, it is not uncommon for interruptions to the download to corrupt the information downloaded. we can check the uploaded and downloaded files are identical using its MD5 hash an md5 hash is a unique digital fingerprint generated for a given file. It is a long string of 30+ letters and numbers.

To do this, we need the md5 hashes for each of the files - this must be sent by the uploader. We then download the data, generate new md5 hashes, and compare them to the originals

## MD5 on Windows: Powershell

### Set up

1. open powershell

2. navigate to the folder that contains the files you want to check. E.g. `cd Downloads\F24A430002266_HOMlefhR_2\`

3. define the files containing the md5 hashes and the one to store the output. Note, this assumes they exist in the current working directory.  
`$md5File = "md5.txt"`  
`$outputFile = "md5_check.txt"`

### Read in data and generate md5s

```
# Read the md5.txt file
$lines = Get-Content $md5File

# Prepare output file
"" | Set-Content $outputFile

# Loop through each line in your input to handle one file at a time
foreach ($line in $lines) {

    # separate the line by spaces
    $parts = $line -split "\s+"
    
    # only want lines with two columns (file path and md5 string)
    # so check the length and only continue if there are two columns
    if ($parts.Count -lt 2) { continue }  # Skip malformed lines

    
    $filePath = $parts[1]  # Extract file path

    # if the path exists
    if (Test-Path $filePath) {

        # generate the MD5 hash using Get-FileHash
        $hash = (Get-FileHash -Path $filePath -Algorithm MD5).Hash.ToLower()

    # if the file doesn't exist
    } else {
	# print an error message
        $hash = "FILE_NOT_FOUND"
    }

    # Write to output file
    "$hash  $filePath" | Add-Content $outputFile

    # let us know we have finished with this file
    Write-Host "MD5 generated for $filePath"
} 

# once we have generated MD5 hashes for all files, print a message and quit:
Write-Host "MD5 hashes generated! Results saved in $outputFile"
Pause

```














