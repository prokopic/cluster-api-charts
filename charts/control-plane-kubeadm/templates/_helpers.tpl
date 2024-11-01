{{/*
    Print control plane name.
    We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "control-plane-kubeadm.metadata.name" -}}
{{- .Values.kubeadmcontrolplane.metadata.name | default .Values.global.metadata.name | default .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
    Print namespace where the resources are deployed to.
    We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "control-plane-kubeadm.metadata.namespace" -}}
{{- .Values.kubeadmcontrolplane.metadata.namespace | default .Values.global.metadata.namespace | default .Release.Namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "control-plane-kubeadm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "control-plane-kubeadm.metadata.labels" -}}
helm.sh/chart: {{ include "control-plane-kubeadm.chart" . }}
{{ include "control-plane-kubeadm.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "control-plane-kubeadm.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "control-plane-kubeadm.metadata.template-name" -}}
{{- include "control-plane-kubeadm.metadata.name" . }}-controlplane
{{- end }}
