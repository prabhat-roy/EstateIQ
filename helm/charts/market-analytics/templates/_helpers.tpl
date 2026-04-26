{{- define "market-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "market-analytics.labels" -}}
app.kubernetes.io/name: market-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: analytics
{{- end -}}

{{- define "market-analytics.selectorLabels" -}}
app.kubernetes.io/name: market-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
