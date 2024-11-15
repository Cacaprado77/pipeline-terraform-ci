variable "aws_key_pub" {
  description = "Chave Pública para a máquina na AWS"
  type        = string
}

variable "region" {
  description = "Região onde os recursos serão criados na AWS"
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Ambiente onde estarão os recursos da AWS"
  type        = string
  default     = "dev"
}

variable "bucket_s3_sor_github" {
  description = "Camada SOR para pouso do dado bruto"
  type        = string
  default     = "dataingestion-sor-github"
}