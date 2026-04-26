{{- define "investor-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "investor-sso.labels" -}}
app.kubernetes.io/name: investor-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: identity
{{- end -}}

{{- define "investor-sso.selectorLabels" -}}
app.kubernetes.io/name: investor-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
