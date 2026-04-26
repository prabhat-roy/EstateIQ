{{- define "portfolio-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "portfolio-service.labels" -}}
app.kubernetes.io/name: portfolio-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: investment
{{- end -}}

{{- define "portfolio-service.selectorLabels" -}}
app.kubernetes.io/name: portfolio-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
