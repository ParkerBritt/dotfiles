<h1 align="center">Dotfiles</h1>
<p align="center"}>
  <img src="https://img.shields.io/badge/-Rocky-10B981?style=for-the-badge&logo=rockylinux&logoColor=10B981&labelColor=282828">
  <img src="https://img.shields.io/badge/-Arch-1793D1?style=for-the-badge&logo=archlinux&logoColor=1793D1&labelColor=282828">
  <img src="https://img.shields.io/badge/-Fedora-51A2DA?style=for-the-badge&logo=fedora&logoColor=51A2DA&labelColor=282828"><br>
  <img src="https://img.shields.io/badge/-Wayland-FFBC00?style=for-the-badge&logo=wayland&logoColor=FFBC00&labelColor=282828">
  <img src="https://img.shields.io/badge/-X11-E64F1A?style=for-the-badge&logoColor=51A2DA&labelColor=282828&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHZlcnNpb249IjEuMSIKICAgd2lkdGg9IjI3NSIKICAgaGVpZ2h0PSIyNzUiCiAgIGlkPSJzdmcyIj4KICA8ZGVmcwogICAgIGlkPSJkZWZzNCIgLz4KICA8ZwogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yOTUuMTc4NTcsLTMzOC42MTIxNykiCiAgICAgaWQ9ImxheWVyMSI+CiAgICA8cGF0aAogICAgICAgZD0ibSAyOTYuNzg1NzEsNjEyLjYzMDAzIGMgMCwwIDEwNC4wNjI4NSwtMTMyLjc4NTkgMTA0LjA2Mjg1LC0xMzIuNzg1OSAwLDAgLTEwNC4wNjI4NSwtMTQwLjI0OTgyIC0xMDQuMDYyODUsLTE0MC4yNDk4MiBsIDY3LjMwMjk5LDAgYyAwLDAgODMuMzQ3NDksMTEzLjQ4ODI2IDgzLjM0NzQ5LDExMy40ODgyNiBsIC0xMjYuODY0NzcsMTU5LjU0NzQ2IC0yMy43ODU3MSwwIHogTSA0MTcuMjg3OTQsNTAwLjA2NTc4IDU0NC4xMTY2MiwzMzkuNTk0MzEgYyAwLDAgMjQuNDU0ODEsMCAyNC40NTQ4MSwwIEwgNDY0LjQ3NzQ5LDQ3MS4yNjU3OCBjIDAsMCAxMDQuMDkzOTQsMTQxLjM2NDI1IDEwNC4wOTM5NCwxNDEuMzY0MjUgbCAtNjcuMzAzNTcsMCBjIDAsMCAtODMuOTc5OTIsLTExMi41NjQyNSAtODMuOTc5OTIsLTExMi41NjQyNSB6IgogICAgICAgaWQ9InBhdGgyODMwIgogICAgICAgc3R5bGU9ImZpbGw6IzAwMDAwMCIgLz4KICA8L2c+Cjwvc3ZnPgo=">
  <img src="https://img.shields.io/badge/-Hyprland-00b9e9?style=for-the-badge&logoColor=51A2DA&labelColor=282828&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhLS0gQ3JlYXRlZCB3aXRoIElua3NjYXBlIChodHRwOi8vd3d3Lmlua3NjYXBlLm9yZy8pIC0tPgoKPHN2ZwogICB2ZXJzaW9uPSIxLjEiCiAgIGlkPSJzdmcxIgogICB3aWR0aD0iMjQxLjY3NjA2IgogICBoZWlnaHQ9IjMxMi4zNzc5IgogICB2aWV3Qm94PSIwIDAgMjQxLjY3NjA1IDMxMi4zNzc5IgogICB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxkZWZzCiAgICAgaWQ9ImRlZnMxIiAvPgogIDxnCiAgICAgaWQ9ImcxIgogICAgIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01MC42NjY4OTcsLTE0LjI3MzAyMykiPgogICAgPHBhdGgKICAgICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZTtmaWxsOiMwMGI5ZTk7ZmlsbC1vcGFjaXR5OjEiCiAgICAgICBkPSJNIDEzNy4zMzMzNCwzMjIuNTgxNzMgQyA4Ny44Nzk0NzksMzEwLjEwNDA1IDUwLjY2NjAxNiwyNjEuMjk3OTggNTAuNjY2ODk3LDIwOC45MTcyNyA1MC42Njc1ODMsMTY4LjEyMzcgNjYuNzgxOTU4LDEzMS42NTYxMiAxMDcuMzM4NTUsODAuNjY2NjY5IGMgMTAuNjc2NDQsLTEzLjQyMjg2OSAzMS4wNzU5LC00MS41MzQyMyA0NS4yNzY3NywtNjIuMzkzNDE4IDUuMjk5MTQsLTcuNzgzNzIyIDYuMDUxMzUsLTUuNDkzMjU4IDYuMDUxMzUsMTguNDI2MjI1IHYgMjEuODc1NDMxIGwgLTcuMjI2MiwxMS4wNDU4ODEgYyAtMy45NzQ0MSw2LjA3NTIzNSAtMTQuMTY2NzIsMjAuMDQ1ODgxIC0yMi42NDk1OCwzMS4wNDU4ODIgLTQ1LjEwNDAxNiw1OC40ODc4NiAtNTguMDE2MjA1LDkxLjg0MTg2IC00OS41NTIwNzgsMTI4IDI0Ljc1MjIyOCwxMDUuNzM5NzIgMTgwLjg2Nzc2OCw5Mi4wNzU5NCAxODQuNDI4ODk4LC0xNi4xNDE4NiAxLjEyNjY2LC0zNC4yMzc2IC04LjE0NDg4LC01Ny4yMDg2NiAtMzkuNDk3MzQsLTk3Ljg1ODE0IEMgMjA2Ljg5NDA0LDkyLjI2NzM0OCAxOTYuMTM0OTQsNzcuNjI1MDc0IDE5MC4xMTk2MSw2OC4zMjYzMzIgbCAtNi4xMTk2LC05LjQ1OTk0NiBWIDM2LjA5OTg2IGMgMCwtMjcuMjk2Njg3OCAtMC40OTkxNCwtMjcuMDg5Njg1NiAxNC4wOTU5OSwtNS44NDU5MjEgMTMuNTI0ODcsMTkuNjg1OTQ4IDIxLjUxODI4LDMwLjU1MDI4MiA0MC4wMzQwNSw1NC40MTI3MyA1Mi43MTM4NSw2Ny45MzU2NzEgNjUuODIwODcsMTE4LjAwMDA5MSA0NC4zNzc4NiwxNjkuNTA4NTIxIC0yMi43NTU1OCw1NC42NjEzNiAtODQuNDQ0NTQsODMuNzI5MzIgLTE0NS4xNzQ1Nyw2OC40MDY1NCB6IgogICAgICAgaWQ9InBhdGgxIiAvPgogIDwvZz4KPC9zdmc+Cg==">
</p>

Personal dotfiles I use on Linux.
I've experimented with my environment for various reasons so it might be a bit all over the place.

### Terminal
![image](screenshots/terminal.png)
### Fetch
![image](screenshots/fetch.png)
### Neovim
![image](screenshots/neovim.png)
### Awesome WM
![image](screenshots/awesomewm.png)
### Hyprland
![image](screenshots/hyprland.png)
### KDE
![image](screenshots/kde_01.png)
