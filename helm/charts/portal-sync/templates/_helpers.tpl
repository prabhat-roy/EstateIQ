{{- define "portal-sync.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "portal-sync.labels" -}}
app.kubernetes.io/name: portal-sync
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: listings
{{- end -}}

{{- define "portal-sync.selectorLabels" -}}
app.kubernetes.io/name: portal-sync
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
