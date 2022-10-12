{{/*
Define apiVersion for CRD.
bases stands for v1.
*/}}
{{- define "crd_version" -}} 
{{- if .Capabilities.APIVersions.Has "apiextensions.k8s.io/v1" -}}
bases
{{- else -}}
v1beta1
{{- end -}}
{{- end -}}

{{- define "volcano.webhook.prefix" -}}
{{ include "common.names.fullname" . }}-admission-service
{{- end -}}
