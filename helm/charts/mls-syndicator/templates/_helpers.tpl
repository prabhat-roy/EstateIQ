{{- define "mls-syndicator.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mls-syndicator.labels" -}}
app.kubernetes.io/name: mls-syndicator
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: listings
{{- end -}}

{{- define "mls-syndicator.selectorLabels" -}}
app.kubernetes.io/name: mls-syndicator
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
