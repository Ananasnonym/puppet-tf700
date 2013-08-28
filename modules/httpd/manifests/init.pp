class httpd {
	package { micro-httpd:
		ensure => present,
}
file { "/etc/httpd/conf.d/pirelli.conf":
	owner => "apache",
	group => "apache",
	mode => 0440,
	source => "puppet://$puppetmaster/modules/httpd/files/pirelli.conf",
	require => Package["micro-httpd"]
	}
}
