{{ range $i, $person := .persons }}{{ if gt $i 0 }}
{{ end }}{{ template "hello" $person }}{{ end }}
