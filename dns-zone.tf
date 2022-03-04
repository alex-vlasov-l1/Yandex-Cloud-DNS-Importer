resource "yandex_dns_zone" "this" {
  name        = "my-public-zone"
  description = "desc"

  zone             = var.namedzone
  public           = true
}


resource "yandex_dns_recordset" "rs1" {
  zone_id = yandex_dns_zone.this.id
  name    = "srv.example.com."
  type    = "A"
  ttl     = 200
  data    = ["10.1.0.1"]
}

