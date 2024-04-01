resource "local_file" "efs-manifest" {
  content = templatefile("./template/template-efs.yaml", {
    fs_id = aws_efs_file_system.eks.id
  })
  filename = "../k8s/efs-terraformed.yaml"
  depends_on = [aws_efs_file_system.eks]
}