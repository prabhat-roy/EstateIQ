{{- define "virtual-tour.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "virtual-tour.labels" -}}
app.kubernetes.io/name: virtual-tour
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: listings
{{- end -}}

{{- define "virtual-tour.selectorLabels" -}}
app.kubernetes.io/name: virtual-tour
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
