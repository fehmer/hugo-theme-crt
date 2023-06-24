---
title: Theme Customization
date: 2023-05-01
author: Kevin
hero: "images/colors.webp"
---

## Colors

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

## Logo

To replace the logo, e.g. with an image or an ascii art, create a file called `layouts/partials/logo.html`. 

```html
<a href="{{ $.Site.BaseURL }}">
    <div class="logo">
        <pre style="font-size: .4em;line-height: 1em;">
 .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. |
| |     ______   | || |  _______     | || |  _________   | |
| |   .' ___  |  | || | |_   __ \    | || | |  _   _  |  | |
| |  / .'   \_|  | || |   | |__) |   | || | |_/ | | \_|  | |
| |  | |         | || |   |  __ /    | || |     | |      | |
| |  \ `.___.'\  | || |  _| |  \ \_  | || |    _| |_     | |
| |   `._____.'  | || | |____| |___| | || |   |_____|    | |
| |              | || |              | || |              | |     _     _ _|_  _  ._ _     _  ._  | o ._   _  
| '--------------' || '--------------' || '--------------' |    _> \/ _>  |_ (/_ | | |   (_) | | | | | | (/_ 
 '----------------'  '----------------'  '----------------'  
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

If you want to use different icons you can create a file e.g. `layouts/partials/icons/links/keyboard.html` with content

```html
<svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 576 512">
<!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
    <path d="M64 64C28.7 64 0 92.7 0 128V384c0 35.3 28.7 64 64 64H512c35.3 0 64-28.7 64-64V128c0-35.3-28.7-64-64-64H64zm16 64h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V144c0-8.8 7.2-16 16-16zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm16 80h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V336c0-8.8 7.2-16 16-16zm80-176c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V144zm16 80h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zM160 336c0-8.8 7.2-16 16-16H400c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V336zM272 128h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V144c0-8.8 7.2-16 16-16zM256 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM368 128h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H368c-8.8 0-16-7.2-16-16V144c0-8.8 7.2-16 16-16zM352 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H368c-8.8 0-16-7.2-16-16V240zM464 128h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H464c-8.8 0-16-7.2-16-16V144c0-8.8 7.2-16 16-16zM448 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H464c-8.8 0-16-7.2-16-16V240zm16 80h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H464c-8.8 0-16-7.2-16-16V336c0-8.8 7.2-16 16-16z"/>
</svg>
``` 

and in the config:

```yaml
  links:
    - href: "https://mywebsite.example"
      title: "my homepage"
      icon: keyboard
```


## Prompt

The default prompt is `➜` and uses the `color_accent`. You can make the prompt more fancy by creating a file called `layouts/partials/prompt.html`. Example to show the author of a post on the prompt if available:

```html
{{ if .Params.author }}
<font color="#209618">{{.Params.author}}@home</font>
{{ end }}
<font color="#2cc920">&gt;</font>&nbsp;
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