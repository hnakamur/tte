tte
===

text template executor

See [text/template document]( http://golang.org/pkg/text/template/ ) for template syntax.

## Download binary

OS X

```
curl -O https://hnakamur.github.io/tte/download/darwin_amd64/tte
```

Linux 64bit

```
curl -O https://hnakamur.github.io/tte/download/linux_amd64/tte
```

Linux 32bit

```
curl -O https://hnakamur.github.io/tte/download/linux_386/tte
```

Windows 64bit

```
curl -O https://hnakamur.github.io/tte/download/windows_amd64/tte
```

Windows 32bit

```
curl -O https://hnakamur.github.io/tte/download/windows_386/tte
```

## Usage

```
% ./tte -h
Usage of ./tte:
  -g=false: enable globbing template files
  -j="-": json filename (default stdin)
  -o="-": output filename (default stdout)
  -v=false: show version and exit
```

## Example

example/data.json

```
{
  "persons": [
    {"name": "Alice"},
    {"name": "Bob"},
    {"name": "Charlie"}
  ]
}
```

example/single.tpl

```
{{ range $i, $_ := .persons }}{{ if gt $i 0 }}
{{ end }}Hello, {{ .name }}!{{ end }}
```

Example session

```
$ ./tte -j example/data.json example/single.tpl
Hello, Alice!
Hello, Bob!
Hello, Charlie!
```

