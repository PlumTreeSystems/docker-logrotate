{{- define "..env" -}}
- name: TPATH
  value: '{{ .Values.tpath }}'
- name: CRON
  value: '{{ .Values.cron }}'
{{- end }}