{{ range $i, $person := .persons }}{{ if gt $i 0 }}
{{ end }}Hello, {{ .name }}!{{ end }}
