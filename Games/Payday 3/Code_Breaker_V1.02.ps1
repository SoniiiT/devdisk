Write-Output "+------------------------------------------------------------------------------------------------------------------------------------------------------------+"
Write-Output "_________            .___       __________                        __                  ___.             _________             .__.__._____________
\_   ___ \  ____   __| _/____   \______   \_______   ____ _____  |  | __ ___________  \_ |__ ___.__.  /   _____/ ____   ____ |__|__|__\__    ___/
/    \  \/ /  _ \ / __ |/ __ \   |    |  _/\_  __ \_/ __ \\__  \ |  |/ // __ \_  __ \  | __ <   |  |  \_____  \ /  _ \ /    \|  |  |  | |    |   
\     \___(  <_> ) /_/ \  ___/   |    |   \ |  | \/\  ___/ / __ \|    <\  ___/|  | \/  | \_\ \___  |  /        (  <_> )   |  \  |  |  | |    |   
 \______  /\____/\____ |\___  >  |______  / |__|    \___  >____  /__|_ \\___  >__|     |___  / ____| /_______  /\____/|___|  /__|__|__| |____|   
        \/            \/    \/          \/              \/     \/     \/    \/             \/\/              \/            \/                          V1.02"
Write-Output "+------------------------------------------------------------------------------------------------------------------------------------------------------------+"

function Get-UserInput {
    Write-Output "Handelt es sich bei dem Code um eine 3 digit oder 4 digit Kombination?"
    Write-Output "1. 3 digit"
    Write-Output "2. 4 digit"
    $key = Read-Host "Taste drücken (1 oder 2)"
    switch ($key) {
        "1" {
            Write-Output "Gebe die 3 Ziffern nacheineinander ein die angefordert werden"
            $zahl1 = Read-Host "Zahl 1"
            $zahl2 = Read-Host "Za<hl 2"
            $zahl3 = Read-Host "Zahl 3"
            Write-Output "+-------------------------------------+"
            Write-Output "Die eingegebenen Zahlen lauten: $zahl1 $zahl2 $zahl3"
            Write-Output "+-------------------------------------+"

            Write-Output "Version 1: $zahl1 $zahl1 $zahl2 $zahl3"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 1:"
            Write-Output "$zahl2 $zahl1 $zahl1 $zahl3"
            Write-Output "$zahl2 $zahl1 $zahl3 $zahl1"
            Write-Output "$zahl2 $zahl3 $zahl1 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 2:"
            Write-Output "$zahl3 $zahl1 $zahl1 $zahl2"
            Write-Output "$zahl3 $zahl1 $zahl2 $zahl1"
            Write-Output "$zahl3 $zahl2 $zahl1 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 3:"
            Write-Output "$zahl1 $zahl1 $zahl2 $zahl3"
            Write-Output "$zahl1 $zahl2 $zahl1 $zahl3"
            Write-Output "$zahl1 $zahl3 $zahl1 $zahl2"
            Write-Output "$zahl1 $zahl3 $zahl2 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Version 2: $zahl1 $zahl2 $zahl2 $zahl3"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 1:"
            Write-Output "$zahl1 $zahl2 $zahl2 $zahl3"
            Write-Output "$zahl1 $zahl2 $zahl3 $zahl2"
            Write-Output "$zahl1 $zahl3 $zahl2 $zahl2"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 2:"
            Write-Output "$zahl3 $zahl1 $zahl2 $zahl2"
            Write-Output "$zahl3 $zahl2 $zahl1 $zahl2"
            Write-Output "$zahl3 $zahl2 $zahl2 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 3:"
            Write-Output "$zahl2 $zahl1 $zahl2 $zahl3"
            Write-Output "$zahl2 $zahl1 $zahl3 $zahl2"
            Write-Output "$zahl2 $zahl3 $zahl1 $zahl2"
            Write-Output "$zahl2 $zahl3 $zahl2 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Version 3: $zahl1 $zahl2 $zahl3 $zahl3"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 1:"
            Write-Output "$zahl1 $zahl2 $zahl3 $zahl3"
            Write-Output "$zahl1 $zahl3 $zahl2 $zahl3"
            Write-Output "$zahl1 $zahl3 $zahl3 $zahl2"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 2:"
            Write-Output "$zahl2 $zahl1 $zahl3 $zahl3"
            Write-Output "$zahl2 $zahl3 $zahl1 $zahl3"
            Write-Output "$zahl2 $zahl3 $zahl3 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 3:"
            Write-Output "$zahl3 $zahl3 $zahl1 $zahl2"
            Write-Output "$zahl3 $zahl3 $zahl2 $zahl1"
            Write-Output "$zahl3 $zahl1 $zahl2 $zahl3"
            Write-Output "$zahl3 $zahl2 $zahl1 $zahl3"
        }
        "2" {
            Write-Output "Gebe die 4 Ziffern nacheineinander ein die angefordert werden"
            $zahl1 = Read-Host "Zahl 1"
            $zahl2 = Read-Host "Zahl 2"
            $zahl3 = Read-Host "Zahl 3"
            $zahl4 = Read-Host "Zahl 4"

            Write-Output "+-------------------------------------+"
            Write-Output "Die eingegebenen Zahlen lauten: $zahl1 $zahl2 $zahl3 $zahl4"
            Write-Output "+------------------------------------+"

            Write-Output "Kombination 1:"
            Write-Output "$zahl1 $zahl2 $zahl3 $zahl4"
            Write-Output "$zahl1 $zahl2 $zahl4 $zahl3"
            Write-Output "$zahl1 $zahl3 $zahl2 $zahl4"
            Write-Output "$zahl1 $zahl3 $zahl4 $zahl2"
            Write-Output "$zahl1 $zahl4 $zahl2 $zahl3"
            Write-Output "$zahl1 $zahl4 $zahl3 $zahl2"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 2:"
            Write-Output "$zahl2 $zahl1 $zahl3 $zahl4"
            Write-Output "$zahl2 $zahl1 $zahl4 $zahl3"
            Write-Output "$zahl2 $zahl3 $zahl1 $zahl4"
            Write-Output "$zahl2 $zahl3 $zahl4 $zahl1"
            Write-Output "$zahl2 $zahl4 $zahl1 $zahl3"
            Write-Output "$zahl2 $zahl4 $zahl3 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 3:"
            Write-Output "$zahl3 $zahl1 $zahl2 $zahl4"
            Write-Output "$zahl3 $zahl1 $zahl4 $zahl2"
            Write-Output "$zahl3 $zahl2 $zahl1 $zahl4"
            Write-Output "$zahl3 $zahl2 $zahl4 $zahl1"
            Write-Output "$zahl3 $zahl4 $zahl1 $zahl2"
            Write-Output "$zahl3 $zahl4 $zahl2 $zahl1"
            Write-Output "+-------------------------------------+"

            Write-Output "Kombination 4:"
            Write-Output "$zahl4 $zahl1 $zahl2 $zahl3"
            Write-Output "$zahl4 $zahl1 $zahl3 $zahl2"
            Write-Output "$zahl4 $zahl2 $zahl1 $zahl3"
            Write-Output "$zahl4 $zahl2 $zahl3 $zahl1"
            Write-Output "$zahl4 $zahl3 $zahl1 $zahl2"
            Write-Output "$zahl4 $zahl3 $zahl2 $zahl1"
        }
        default {
            Write-Output "Ungültige Eingabe. Bitte wählen Sie 1 oder 2."
            Get-UserInput
        }
    }
}

Get-UserInput

# Endmeldung
Write-Output "+---------------------------------------------------------------------------------------+"
$sentences = @(
    "Fucking awesome! ~ Dellas",
    "Yippee ki-yay motherfucker! ~ Dellas",
    "Geronimo, motherfuckers! ~ Dellas",
    "No fooling around right now, got it? We're in some serious shit. ~ Dellas",
    "Going to work. ~ Dellas",
    "Let's make that money. ~ Dellas",
    "Fuck oh fuck! ~ Dellas",
    "What the...! What are you doing, Matt? ~ Hoxton",
    "You'll never fuckin' take me down! ~ Hoxton",
    "Come on, come on, come on! ~ Hoxton",
    "Get the bags out, grab the money! ~ Hoxton",
    "The alarm goes off, we get filthy rich... Is there more to know? ~ Hoxton"
    "This code cost us a fortune! Someone's gonna pay for this! ~ Hoxton",
    "Did ya miss me ya wankers? ~ Hoxton",
    "What cocksucking motherfucker measured the c4? ~ Hoxton",
    "Actually, make that a left. We're not going to the safehouse! ~ Hoxton",
    "Yeah, what the fuck did just happen? Can someone please untie me here? ~ Hoxton",
    "I recognize the two of you - but where's my old fucking mask? ~ Hoxton",
    "Wolf, what you did with that Bulldozer back there was a bit... I think you need help, mate. ~ Hoxton"
)
$randomIndex = Get-Random -Minimum 0 -Maximum $sentences.Length
Write-Output $sentences[$randomIndex]

Write-Output "+---------------------------------------------------------------------------------------+"
Read-Host "Drücken Sie eine beliebige Taste, um das Programm zu beenden."