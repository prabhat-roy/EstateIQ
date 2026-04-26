{{- define "lead-scoring.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "lead-scoring.labels" -}}
app.kubernetes.io/name: lead-scoring
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: analytics
{{- end -}}

{{- define "lead-scoring.selectorLabels" -}}
app.kubernetes.io/name: lead-scoring
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
