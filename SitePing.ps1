<# This form was created by Empilon
.NAME
    SitePing
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(300,110)
$Form.text                       = "SitePinger"
$Form.TopMost                    = $false

$URL                             = New-Object system.Windows.Forms.TextBox
$URL.multiline                   = $false
$URL.text                        = "www.google.com"
$URL.width                       = 245
$URL.height                      = 20
$URL.location                    = New-Object System.Drawing.Point(5,30)
$URL.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ping                            = New-Object system.Windows.Forms.Button
$ping.text                       = "Check"
$ping.width                      = 85
$ping.height                     = 30
$ping.location                   = New-Object System.Drawing.Point(7,58)
$ping.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Result                          = New-Object system.Windows.Forms.TextBox
$Result.multiline                = $false
$Result.width                    = 70
$Result.height                   = 20
$Result.enabled                  = $false
$Result.location                 = New-Object System.Drawing.Point(108,77)
$Result.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$MS                              = New-Object system.Windows.Forms.TextBox
$MS.multiline                    = $false
$MS.width                        = 67
$MS.height                       = 20
$MS.enabled                      = $false
$MS.location                     = New-Object System.Drawing.Point(182,77)
$MS.Font                         = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Site Adres:"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(9,11)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "Available:"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(110,57)
$Label3.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "ms speed:"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(182,57)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ErrorProvider1                  = New-Object system.Windows.Forms.ErrorProvider

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Go"
$Button2.width                   = 29
$Button2.height                  = 19
$Button2.location                = New-Object System.Drawing.Point(254,30)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($URL,$ping,$Result,$MS,$Label1,$Label3,$Label4,$Button2))

$ping.Add_Click({ fcheck })
$Button2.Add_Click({ fgo })

function fgo {
    $web = $URL.text
    Start "$web"
}
$ErrorActionPreference = "silentlycontinue"
$iconBase64      = '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEA8NEBIQDRAQEhIPDxAQDhAPEBAQFRIXFhURFRUZHCggGBolGxMXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGyslICUvLS84LS0tNS4yKzItLS0tLS0tLTc4LS8tMC0tLS0tLTAxKy0vNS0tLS0tLS8tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAQIDBAYIBwX/xABEEAACAQEDBgkJBgQHAQAAAAAAAQIDBAUREiExUVORBhQXQWFxc4GyBxMiNJKTlLHRIzNSobPBJEJi8DJDY3KCouEV/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAQFBgEDAv/EADQRAQABAgQEBAQFAwUAAAAAAAABAgMEBREhE1FSkRIiMUFhgdHhNHGhwfAjMnIGFDNCsf/aAAwDAQACEQMRAD8A9AjFYLMtC5kBOC1LcAwWpbgGC1LcAyVqW4CclaluAZK1LcAyVqW4BkrUtwDJWpbgGStS3AMlaluAZK1LcAyVqW4BkrUtwDJWpbgGStS3AMlaluAjBaluAYLUtwDBaluAnJWpbgGStS3ARgtS3AMlaluQDJWpbkAyVqW5ASorUtyAw8laluQGVHQupfICQAACmpUjFOcmoxWmUmoxS1tvMgNct/D66qLwla6c3qoxnX/OKa/MDB5Ubp2tX4aYDlSuna1vhpgOVK6drW+GmA5Urp2tb4aYDlSuna1vhpgOVK6drW+GmA5Urp2tb4aYDlSuna1vhpgOVK6drW+GmA5Urp2tb4aYDlSuna1vhpgOVK6drW+GmA5Urp2tb4eYDlSuna1vh5gOVK6drW+HmA5Urp2tb4aYGXY/KJdNV5KtUab/ANWnUpL2nHD8wNjs1pp1YqpTnCrB6J05xnF96zAXQAAABiAZMdC6l8gJAAanw34c0LtSppKvaprGNJPNBc06j5lqWlgeJcIeEtrt88q0VZSWOMaabjSh1R/cD4+IACAAAAAAAAAAAAAAAAACcQPoXNfVosdTztnqzovnUX6MlqlHQwPZ+AvlEp29xs1oUaFqa9Fr7uu9Ufwy6HpA3rEBiATAxcQMiOhd3yAkDX+G/CSN22SVfNKrN+bs8Mc0qj530RWfcucDna22qdapOtVk6lSpJynKTxcmwPsXZwVr2qzu00XGbjOUHSfoyzJPGL0PTozEG/j7dm7w7m23qrMRmlnD3+Fd2211fGtNknSk4VIypyWlSi0yZTXTXGtM6wsLdym5T4qJ1hZaPp9oAAAAAAAAAAAAAAAAAAEoCunUcWpJuMk04tPBprQ0B755NeFf/wBGzunVf8TZ8I1P9SD/AMNXr5murWBuIDEDFAvx0Lq/YCrEDwvywXu69v4un6FlioYc3nJLKk/zQGiIEPVPJp6nLtp+GJls7/EfKGK/1B+Kj/GP3bBeV2UbTHIrU41FzN5pR6paUV9jE3bE6250VeHxd7D1a26tP3/NoV+eT+rDGdml56OnzcsFUXQuaX5F/hs5or2vRpPP2ajB5/br0pvx4Z5+32abXs8qcnCcZQlHM4yWDXcXNNVNUa0zrC/orpriJpnWFo6+kAAAAAAAAAAAAAAAAAADZvJ3fDsl4WeeOEKklQqLXGeZfngwOigIxAxgL8dC7vkBUgOY+E1Z1LbbJt4uVorbvONJbgPmAbRwU4WTsUXSlBVaLk5NL0ZxbSTaeh6NDK3HZdTiZ8eulSozLKaMXPjidKvT4PR7ovyz2tY0ZpywxcJejOPXF/sZvEYO7YnzxtzZLFZffw0/1Kduft3fRxIqFqwL1uez2tZNampPmmvRmuqSzkixirtidaJ+Xsl4XG3sPOtur5e3ZoV98Aa1LGdnfGIacl5qqXyl3Ggw2b27m1zyzz9mowme2rnlux4Z5+zUK1FwbjJOMk8Gmmmn0plvExMaxK9iqKo1pnWFo66AAAAAAAAAAAAAAAAKqc3FqSzNNNPU0B1RZamVCEvxQjLfFMC4BjYgX46F/fMBKYHMF+etWnt6v6jAwQJTArp1pRalGTi1oabTXecmImNJcqpiqNKo1bfcfDuvSwhXXGYfizKql16Jd+8qcTlFq55rfln9Pso8XkNm75rXln9Pt/Nm+3TfVntSxozUnzwfozX/ABKDEYS7YnSuPn92XxWBvYadLlPz9u7PxIqI+be9x2e1xya0E5c1SOEakep4fMl4fGXrE+Sfl7JuEx9/DT/TnblPo0K++AleinOj/EwWfBLCol/t5+40GGza1d0ivyz+jT4PPLN7a55Z/T+fm1KrBxeS001maawafUWuuvovImJjWFAAAAAAAAAAAAAAAADqW739jR7On4EBkYgYwF6LzLq/YCpAcw3561ae3q/qSAwQAAABco1ZQalFuMlnTi2mu85MRMaTGrlVMVRpMaw3C5OHlalhC0LjENGXmjVS69Eu/eVOJyi3X5rflnl7fZRYvIbNzzWp8M8vb7N8uu+bPao40ZqT54aJrriZ/EYS7YnSuPmzGJwV7Dzpcp+ft3ZyI6JD5d88H7Na19rDCfNUh6M1+z7yZhsdesT5Z25Sn4TMb+GnyTrHKfRoV+cCbRZ8Z0v4mms/or00umPP3Ggw2a2ru1U+GWowmd2L3lr8s/H0n5/Vqk4tNrDDDoLNc+qkAAAAAAAAAAAAAHUl3/c0ezp+BAX8QMfEC9F5l1fsBKYHMd9+tWnt6v6jAwQAAAAAlAXKFWUJKUW4yWhxbi13o5NMTGkvmqmKo0qjWG4XJw8rU8IWlcYhoy1gqqXyl3lRicotV72vLPL2UWLyG1c81nyzy9vt/wCN7uu9aNqjl0ZqaWlYYSi9TRQYjDXLM6VwzGKwl7DzpcjRnJkdGeY+UqnFWqDSSyqabwWGLxedmqyeqarE6z7tpkNc1YadZ1392nlquwAAAAAAAAAAASgOobv+5o9nT8CAyEBYxAuxeZdS+QEoDmS+/WbT21X9RgYIAAAAATgBl3bdla0T83RhKrLoWZdLehHndvW7UeKudIeN/EW7FPiuVREfFvdz8AYRwnapZb0+ag2o98tL7iixOczOsWY0+Ms3jM/mdrEafGfo3GzWenSiqdOEKcVojGKitxS3LldyfFVMzLP3Ltd2rxVzrPxXJPBNvBJLFtvBJa3qPjwzLziJn0eWeUC20q9pjKlONSMaai5RzxysdCfOavKrNdqzpXGmsttkmHuWcPMXI01nVqxZrgAAAAAAAAAAAADqG7/uaPZw8KAyAMfEC7F5l1L5ASmBzLffrNp7ar+owMIAAAlIDLu+7a1omoUYSqvoWZdLehI87t63ajWudHjev27NPiuVaR/PRvNzcAoxSnapZb2VN+iuiUufuKPE5xM7WY+bOYvP5ny2I+c/RuVls9OlHzdOEacF/LFJL/0pa7tddXiqmZlnq7tdyrxVzMz8d11/+s+NJmXxpq1u+OGdms+MabVpqaoS+zXXPQ+4tMNlV27vX5Y+P0XOEyW/e3r8sfH17NAvrhHaLXmqSwhpVKPowWrFc76WX+HwVqx/ZG/Np8Jl9jDRrRG/OfV8hyJScpYcAAAAAAAAAAAAA6fsD+xo9nDwoDIAx8QL0XmXUvkBIHM19+s2ntqv6jAwgJSAyrDd1W0SyKMJVZaorHDrehHndu0Wo8VyYh5Xr9qzT4rlURDeLk4BKOE7VLKeyg83VKXP3FLic4/62Y+cs7i8+n+3Dxp8Z+jcrJZqdGKp04RpwX8sVgu/WUdy7XcnxVTrLOXLtd2rxVzMyvY/3/eg+Xzo16+eF9ms2MIvjFVfy03jGL/qlo7kWOGyu9d3naOc/RaYTJ79/ery0859/wAoaDffCe02vGM5ZFN/5UG1Hv1mgw+Bs2N4jWebU4TLbGG3pjWec+vy5Pi5ZLT9UNgQAAAAAAAAAAAAAAB09d/3NHs4eFAZAGMBfjoXUvkBKA5nvv1m09tV/UYGGgNx4GcF6Vqg7RWlJxU3BU45sWkni5as+gqcxx9Virh0RvMeqizXM7mGq4VuN5jXV6FZbLToxVOnCNOOqKwx6XrM5cu13KvFVO7KXb1d2rxVzrK+v7Z8aPOHwL64V2ay4wx8/VX+XTaeD/qloXzJ+Gyy9e39I5z+0LPCZTfxGlUx4aec/tDQ774V2m04xyvNU9nTbSw6XpZoMPgLNiNo1nnLT4TK8Ph94jWecvgZRNWQ2BAAAAAAAAAAAAAAAAAB07d/3NLs4eFAX8QMfEC9HQupfICUBzTffrNp7ar+owMOIHp/k59Tl20/DEzOcf8AP8o/djs+/FR/jH7voXzwns1lxUpedqc1KnhJ/wDJ6I/PoI+Gy69e300jnKPhcrv4jeI0jnO36e7Q764W2m04xT8xT/BTedrplpZf4fLrNnf1nnLTYTKbGH308U85+jXGyeszECAAAAAAAAAAAAAAAAAAAA6csH3VLs4eFAX8QMbEC+nmXd8gJTA5qvr1m09tV8bAw0B9OzX1Xp0XZoTdODk5yyc0m2ks704Zjwqw1qu5xKo1n0Rq8HZru8WqNZ9N/o+bN4vE90n09FIAAAAAAAAAAAAAAAAAAAAAADpqwP7Kl2cPCgMjEDHAup6OpfICrEDmu+vWbT21XxsDCAAAAAAAAAAAAAAAAAAAAAAAAAADpmwfdUuzh4UBfAsAXVzdS+QEgc2316zae2q+NgYQAAAAAAAAAAArp0pSaUU5N6Ek233HJmI3lyZiI1mV/iFbZVfdz+h8cWjqju8+Pa6o7nEK2yq+7n9BxaOqO5x7XVHc4hW2VX3c/oOLR1R3OPa6o7nEK2yq+7n9BxaOqO5x7XVHc4hW2VX3c/oOLR1R3OPa6o7nEK2yq+7n9BxaOqO5x7XVHc4hW2VX3c/oOLR1R3OPa6o7nEK2yq+7n9BxaOqO5x7XVHc4hW2VX3c/oOLR1R3OPa6o7nEK2yq+7n9BxaOqO5x7XVHdErDVSbdOpFLO24SSXfgdi5RM6ax3di7bmdIqjux2j7ejpawfdUuzh4UBkYgWMQLqegCUwObr69ZtPbVfGwMIAAAAAAAAAAAfe4F+vWb/AHPwshZj+GqV+a/hK/57vWMHqe4yOsMLsYPU9w1g2MHqe4awbGD1PcNYNjB6nuGsGxg9T3DWDYwep7hrBsYPU9w1g2MHqe4awbGD1PcNYNnzuEafE7Vp+5n8iVgpj/cUfnCZl/4q3+cPHJGxb6XSlgf2VLs4eFAZGIFkCtMCUwOcL59YtHbVfGwMIAAAAAAAAAAAXKdVxeKbTWhptNd6OTETGkuTETGk+i7x+ttKnvJfU+eFb6Y7Q8+Ba6Y7QcfrbSp7yX1OcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtBx+ttKnvJfUcK30x2g4FrpjtCJW6q005zaeZpzk01vOxbojeIjs7Fm3E6xTHZYbPt6OlLB91S7OHhQF8C0BWgJQHON8+sWjtqvjYGEAAAAAAAAAAAAAAAAAAAAAAAAAJQHSVgf2VLs4eFAXwLQFaAlAc5Xz6xaO2q+NgYYAAAAAAAAAAAAAAAAAAAAAAAAAlAdI2D7ql2cPCgL4FnEC4mBKYHOd8esWjtqvjYGGAAAAAAAAAAAAAAAAAAAAAAAAAJQHSFgf2VLs4eFAX8QLWIFaYEpgc739TcbVaYvM1Wqr/uwMAAAAAAAAAAAAAAAAAAAAAAAAAATFN5lnbzIDpCyxyacI6oRW6KQF0C3iBWgGIHi3lMu10LfOeHoV0qsXzY6JLevzA1MAAAAAAAAAAAAAAAAAAAAAAAAAfZ4IXc7TbbPSWjLU5vVCHpPHdh3ge+YgMQLWIFaAkDW+HXB/j1mwgvt6Ty6P9X4qfetHSlrA8SqU3FuLTi08GmsGmuZgUAAAAAAAAAAAAAAAAAAAAAAAKkgPXvJrwcdlpO1Vlk1q6WTF6adHSselvStSQG6AALQFaAYgMQNM4acCY2xu02dqnaP54vNCt9JdPOB5Vb7BVoTdKtCVOa5pLDvT50BjNAQAAAAAAAAAAAAAAAAAAJwAu2azzqSVOnGU5yzKMU233Ael8DeAXmpRtNswc1hKnQzNRf4pvn6gPQQAACjACUBIAABjW6wUbRHIrU4Vo6pxUsOlPSn0oDWLZ5OLBPPDz1DohUUo7ppv8wMPkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYDkvs23r+zTAcl9m29f2aYGRZfJtYYPGcq9b+lzjCP/AFWP5gbPdl02eyrJoUoUeZuK9J9cnnfewM3ECAADECnECUAAAAJAAAGIDEAAAgAAAAAJAgAAAAAAAAAAAMQKcQIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAFIH/2Q=='
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
$stream.Write($iconBytes, 0, $iconBytes.Length);
$iconImage       = [System.Drawing.Image]::FromStream($stream, $true)
$Form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
function fcheck {
    $Ping = $URL.text
$Form.Cursor = [System.Windows.Forms.Cursors]::AppStarting
$test = Test-Connection -ComputerName $Ping -Quiet -Count 1
Start-Sleep -Seconds 1.5
$Form.Cursor = [System.Windows.Forms.Cursors]::Arrow
write-host "$test"
$Result.text = $test
fSpeed
}
function fSpeed {
    $Ping = $URL.text
$Form.Cursor = [System.Windows.Forms.Cursors]::AppStarting
$test = Test-Connection -ComputerName $Ping -ErrorAction SilentlyContinue
Start-Sleep -Seconds 1.5
$Form.Cursor = [System.Windows.Forms.Cursors]::Arrow
write-host "$test"
$Avg = ($test.responsetime | Measure-Object -Average);
if ($test.responsetime){
$MS.text = $Avg.Average
Write-Host "$Avg"
}else{
$MS.text = "False"  
Write-Host "$Avg"
}
$Avg.Average;
}
[void]$Form.ShowDialog()
