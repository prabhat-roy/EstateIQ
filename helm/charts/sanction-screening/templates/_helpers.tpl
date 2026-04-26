{{- define "sanction-screening.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sanction-screening.labels" -}}
app.kubernetes.io/name: sanction-screening
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: compliance
{{- end -}}

{{- define "sanction-screening.selectorLabels" -}}
app.kubernetes.io/name: sanction-screening
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
