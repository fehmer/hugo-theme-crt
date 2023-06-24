# Hugo Theme CRT

A minimal theme emulating a linux terminal on an old CRT monitor. This theme is inspired by the now discontinued [hugo-theme-terminal](https://github.com/panr/hugo-theme-terminal).

## Demo

Demo : https://hugo-theme-crt.fehmer.info/


## Requirements

You need Hugo Extended v0.109.0 or higher. 


## Installation

1. ```git submodule add git@github.com:fehmer/hugo-theme-crt.git themes/hugo-theme-crt```
2. in the config define
  -  `theme: "hugo-theme-crt"`
  - `pagination: 9999`


## Customizations

### Colors

You can adjust the colors used by defining them in the config. Example using `hugo.yaml`:

```yaml
params:
  style:
    color_text: "#8A9B0F"
    color_background: "#490A3D"
    color_link: "#E97F02"
    color_link_visited: "#E97F02"
    color_accent: "#F8CA00"
    color_logo: "#E97F02"
    color_copyright: "#8A9B0F"
    color_hugo: "#BD1550"
    color_theme: "#E97F02"
```

### Logo

To replace the logo, e.g. with an image or an ascii art, create a file called `layouts/partials/logo.html`. 

```html
<a href="{{ $.Site.BaseURL }}">
    <div class="logo">
        <pre style="font-size: .5em;">
███▄ ▄███▓▓██   ██▓    ██▓     ▒█████    ▄████  ▒█████  
▓██▒▀█▀ ██▒ ▒██  ██▒   ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▒██▒  ██▒
▓██    ▓██░  ▒██ ██░   ▒██░    ▒██░  ██▒▒██░▄▄▄░▒██░  ██▒
▒██    ▒██   ░ ▐██▓░   ▒██░    ▒██   ██░░▓█  ██▓▒██   ██░
▒██▒   ░██▒  ░ ██▒▓░   ░██████▒░ ████▓▒░░▒▓███▀▒░ ████▓▒░
░ ▒░   ░  ░   ██▒▒▒    ░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░ ▒░▒░▒░ 
░  ░      ░ ▓██ ░▒░    ░ ░ ▒  ░  ░ ▒ ▒░   ░   ░   ░ ▒ ▒░ 
░      ░    ▒ ▒ ░░       ░ ░   ░ ░ ░ ▒  ░ ░   ░ ░ ░ ░ ▒  
░    ░ ░            ░  ░    ░ ░        ░     ░ ░  
░ ░                                          
       </pre>
   </div>
</a>
```

### Links in footer

Links are defined in the config. Example using `hugo.yaml`:

```yaml
  links:
    - href: "mailto:me@mywebsite.example"
      title: "send a mail"
      icon: email
    - href: "https://github.com/myuser"
      title: "github profile"
      icon: github
``` 

`icon` can be one of `email`, `github`, `homepage`, `npm` or `xing`.

If you want to use different icons you can create a file e.g. `layouts/partials/icons/links/ghost.html` with content

```html
<svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 384 512">
    <!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
    <path d="M40.1 467.1l-11.2 9c-3.2 2.5-7.1 3.9-11.1 3.9C8 480 0 472 0 462.2V192C0 86 86 0 192 0S384 86 384 192V462.2c0 9.8-8 17.8-17.8 17.8c-4 0-7.9-1.4-11.1-3.9l-11.2-9c-13.4-10.7-32.8-9-44.1 3.9L269.3 506c-3.3 3.8-8.2 6-13.3 6s-9.9-2.2-13.3-6l-26.6-30.5c-12.7-14.6-35.4-14.6-48.2 0L141.3 506c-3.3 3.8-8.2 6-13.3 6s-9.9-2.2-13.3-6L84.2 471c-11.3-12.9-30.7-14.6-44.1-3.9zM160 192a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm96 32a32 32 0 1 0 0-64 32 32 0 1 0 0 64z"/>
</svg>
``` 

and in the config:

```yaml
  links:
    - href: "https://mywebsite.example"
      title: "my homepage"
      icon: ghost
```

### Prompt

The default prompt is `➜` and uses the `color_accent`. You can make the prompt more fancy by creating a file called `layouts/partials/prompt.html`. Example to show the author of a post on the prompt if available:

```html
{{ if .Params.author }}
<font color="#8A9B0F">{{.Params.author}}@home</font>
{{ end }}
<font color="#BD1550"></font>&nbsp;
```


### Custom CSS

You can define a file `static/custom.css` to define any custom css.

### Favicons

Define the base path of your favicons in the config. This can be a relative path or an external like `https://mywebsite.example/icons`. Theese files need to exist under that path:

- favicon.ico
- icon.svg
- icon-192.png
- icon-512.png
- apple-touch-icon.png


## Shortcodes

### image

With `image` you can include a local or remote image. You need to define the image source as `src` and optionally an alternate text using `alt`. Examples:

```markdown
{{< image src="/images/test/test.webp" alt="text" >}} internal image
{{< image src="https://mywebsite.example/images/test/test.webp" alt="text" >}} external image
```

### audio

With `audio` you can include an audio file using the buildin player of the web browser.

```markdown
{{< audio src="/sounds/test.mp3" >}}
```
