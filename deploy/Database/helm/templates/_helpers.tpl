{{- define "mysql.labels" -}}
app: mysql
release: {{ .Release.Name }}
{{- end }}