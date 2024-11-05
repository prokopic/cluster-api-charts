{{/*
    Print cluster name.
    We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "cluster-api.metadata.name" -}}
{{- .Values.cluster.metadata.name | default .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
    Print namespace where the resources are deployed to.
    We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "cluster-api.metadata.namespace" -}}
{{- .Values.cluster.metadata.namespace | default .Release.Namespace | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-api.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cluster-api.metadata.labels" }}
helm.sh/chart: {{ include "cluster-api.chart" . }}
{{- include "cluster-api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cluster-api.selectorLabels" }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
cluster.x-k8s.io/provider: cluster-api
cluster.x-k8s.io/cluster-name: {{ include "cluster-api.metadata.name" $ }}
{{- end }}
