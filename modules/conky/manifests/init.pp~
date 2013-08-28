class conky {
	package { conky:
		ensure => present,
}
file { "/etc/conky/conky.conf":
	owner => "root",
	group => "root",
	mode => 644,
	source => "puppet:///modules/conky/conky.conf",
	require => Package["conky"]
	}
file { "/etc/conky/conky-draw.lua":
	owner => "root",
	group => "root",
	mode => 644,
	source => "puppet:///modules/conky/conky-draw.lua",
	require => Package["conky"]
	}
}
