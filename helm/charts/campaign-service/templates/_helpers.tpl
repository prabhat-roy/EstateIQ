{{- define "campaign-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "campaign-service.labels" -}}
app.kubernetes.io/name: campaign-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: marketing
{{- end -}}

{{- define "campaign-service.selectorLabels" -}}
app.kubernetes.io/name: campaign-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
