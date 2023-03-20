resource "aws_route53_zone" "kube-zone" {
  name = "abiola-book.me"
  vpc {
    vpc_id = aws_vpc.kube-vpc.id
  }

}