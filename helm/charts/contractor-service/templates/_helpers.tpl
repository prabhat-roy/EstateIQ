{{- define "contractor-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "contractor-service.labels" -}}
app.kubernetes.io/name: contractor-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: facilities
{{- end -}}

{{- define "contractor-service.selectorLabels" -}}
app.kubernetes.io/name: contractor-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
