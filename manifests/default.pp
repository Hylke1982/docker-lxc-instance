exec { "wget -qO- https://get.docker.com/ | sh": 
 path   => "/usr/bin:/usr/sbin:/bin:/sbin",
 user=>"root"
}
