# 🛠 Dotfiles

Mis dotfiles personales para Linux/macOS, administrados con **GNU Stow** para mantener una estructura limpia, reproducible y fácil de mantener.

Incluye configuración para:

* Alacritty
* Neovim
* Zsh
* Powerlevel10k
* Tmux

Algunos recursos externos (como themes) se manejan mediante **Git submodules**.

---

## 📁 Estructura del proyecto

```text
.
├── alacritty/
│   └── .config/alacritty/
│       ├── alacritty.toml
│       └── themes/        ← submódulo (alacritty-theme)
├── nvim/
│   └── .config/nvim/
├── p10k/
│   └── .p10k.zsh
├── tmux/
│   └── .tmux.conf
└── zsh/
    └── .zshrc
```

Cada carpeta de primer nivel representa un **paquete de stow**.

---

## 🚀 Instalación

### 1️⃣ Clonar el repositorio (IMPORTANTE: con submódulos)

```bash
git clone --recurse-submodules https://github.com/tuuser/dotfiles.git
cd dotfiles
```

> ⚠️ Este paso es obligatorio, ya que algunos recursos (como los themes de Alacritty) se manejan como submódulos.

Si ya clonaste sin `--recurse-submodules`:

```bash
git submodule update --init --recursive
```

---

### 2️⃣ Instalar GNU Stow

#### macOS

```bash
brew install stow
```

#### Debian / Ubuntu

```bash
sudo apt install stow
```

---

### 3️⃣ Aplicar los dotfiles

Desde la raíz del repo:

```bash
stow alacritty
stow nvim
stow zsh
stow tmux
stow p10k
```

Esto creará los **symlinks** correspondientes en `$HOME`.

---

## 🎨 Alacritty Themes (Submódulo)

Los themes de Alacritty provienen del repositorio oficial:

* [https://github.com/alacritty/alacritty-theme](https://github.com/alacritty/alacritty-theme)

Se incluyen como **Git submodule** para:

* evitar duplicar código
* mantener versiones controladas
* facilitar actualizaciones

### Actualizar los themes

```bash
cd alacritty/.config/alacritty/themes
git pull origin master
cd ../../../..
git add alacritty/.config/alacritty/themes
git commit -m "Actualiza themes de Alacritty"
```

---

## 🧠 Notas importantes

* **No edites directamente los archivos dentro de los submódulos**
  Si necesitas personalizar algo, copia el archivo fuera del submódulo.
* Antes de usar `stow`, asegúrate de que los submódulos estén inicializados.
* Este repo asume que `$HOME` es el target de los symlinks.

---

## 🔧 Requisitos

* Git
* GNU Stow
* Alacritty
* Neovim (>= 0.9 recomendado)
* Zsh
* Tmux

---

## 📌 Disclaimer

Estos dotfiles están pensados para uso personal.
Úsalos como referencia y adáptalos a tus necesidades.

