# aliases
New-Alias k kubectl
New-Alias kns kubens

# starship
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "rbkr"
Invoke-Expression (&starship init powershell)
