---
title: Shortcodes
date: 2023-04-01
author: Bob
---

### image

With `image` you can include a local or remote image. You need to define the image source as `src` and optionally an alternate text using `alt`. Examples:

```markdown

{{\< image src="/images/test/test.webp" alt="text" >}} internal image
{{\< image src="https://mywebsite.example/images/test/test.webp" alt="text" >}} external image

```

### audio

With `audio` you can include an audio file using the buildin player of the web browser.

```markdown
{{\< audio src="/sounds/test.mp3" >}}
```