resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAnr4+oTxLZPnqnijEv2DyHLRWRBUcey7dU8CT1WBuDxnshfD7Pdq1VZzNLugklTrJUPiKFbo1rjXmMg07APQQDxq4H0tEsdYgx1kq7qS99HS6GTLZNXTcT2T3uLV3XRRu+D/NFXDHo1i6wiGacTWDyVtzulIqREFj8QgeWTKYvsU5z79bgEw0wV6SUxl234qGoPyyoolNcJLvT52bRX1lmIsA4B+dv5ZhSOPR8fqf0wWHhsSr+6QsOXzv6iYJUcl+q8uin5dodXIMZIGRa8cf3E5KkjGUsl8kRNGX5XQitjhACRUoObdCs6kWQSX6Rh9haQWFm+JArLVaSFMamlRFlQ== rsa-key-20200802"
}