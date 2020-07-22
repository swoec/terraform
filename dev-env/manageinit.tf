data "template_file" "manage-init" {
     template = file("scripts/init.sh")
     vars = {
         DEVICE = var.INSTANCE_DEVICE_NAME
     }
}

data "template_cloudinit_config" "cloudinit_manage" {

       gzip = false
       base64_encode = false

       part {
          content_type = "text/x-shellscript"
          content = data.template_file.manage-init.rendered
       }
}
