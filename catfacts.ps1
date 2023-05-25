# just copy and paste this below and run it for catfacts fun

Add-Type -AssemblyName System.Speech; while ($true) { $Cat = Invoke-WebRequest -Uri 'https://catfact.ninja/fact' -UseBasicParsing | Select-Object -ExpandProperty 'Content' | ConvertFrom-Json; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak($Cat.Fact); Start-Sleep 5; }
