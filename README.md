# windows

- install windows terminal and PowerShell in software store

- scoop
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
  irm get.scoop.sh | iex
  ```

- z - Directory jumper

  `Install-Module -Name z -Force`

- PSReadLine - Autocompletion

  `Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck`

## enable PowerShell profile

`nvim $PROFILE.CurrentUserCurrentHost`

add `. $env:USERPROFILE\.config\powershell\user_profile.ps1` to the end line of the file