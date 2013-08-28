class conky {
	package { xserver-xorg:
		ensure => present,
}
file { "/etc/X11/xorg.conf":
	owner => "root",
	group => "root",
	mode => 644,
	source => "puppet:///modules/x11/xorg.conf",
	require => Package["xserver-xorg"]
	}
file { "/etc/X11/xkb/symbols/tf201dock":
	owner => "root",
	group => "root",
	mode => 644,
	source => "puppet:///modules/x11/tf201dock",
	require => Package["xserver-xorg"]
	}
}
