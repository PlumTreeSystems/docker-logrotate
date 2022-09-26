{{- define "..env" -}}
- name: TPATH
  value: '{{ .Values.tpath }}'
{{- end }}