{{- define "pm-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pm-service.labels" -}}
app.kubernetes.io/name: pm-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: property-management
{{- end -}}

{{- define "pm-service.selectorLabels" -}}
app.kubernetes.io/name: pm-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
