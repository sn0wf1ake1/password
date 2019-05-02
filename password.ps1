param([int]$password_length)
if($password_length -eq 0){$password_length = 20}

$password_weak = ""
$password_strong = ""

Do{
    $random = Get-Random -Minimum 48 -Maximum 122

    switch($random){
        58{} 59{} 60{} 61{} 62{} 63{} 64{} 91{} 92{} 93{} 94{} 95{} 96{}
        default{$password_weak += [char]($random)}
    }
}
Until($password_weak.Length -eq $password_length)

Do{
    $random = Get-Random -Minimum 33 -Maximum 126

    switch($random){
        34{} 39{}
        default{$password_strong += [char]($random)}
    }
}
Until($password_strong.Length -eq $password_length)

"Weak:     $password_weak"
"Strong:   $password_strong"