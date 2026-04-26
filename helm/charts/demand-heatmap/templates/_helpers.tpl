{{- define "demand-heatmap.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demand-heatmap.labels" -}}
app.kubernetes.io/name: demand-heatmap
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: analytics
{{- end -}}

{{- define "demand-heatmap.selectorLabels" -}}
app.kubernetes.io/name: demand-heatmap
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
