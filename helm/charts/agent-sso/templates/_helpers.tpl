{{- define "agent-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "agent-sso.labels" -}}
app.kubernetes.io/name: agent-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: estateiq
estateiq.io/domain: identity
{{- end -}}

{{- define "agent-sso.selectorLabels" -}}
app.kubernetes.io/name: agent-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
