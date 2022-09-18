# aliases
New-Alias k kubectl

# starship
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "rbkr"
Invoke-Expression (&starship init powershell)
