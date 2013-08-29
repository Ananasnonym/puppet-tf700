class keyboard {
	Package { xmodmap: ensure => installed }
file { '/etc/.Xmodmap':
	owner => 'root',
	group => 'root',
	mode => 644,
	source => "puppet:///modules/keyboard/.Xmodmap",
	require => Package["xmodmap"]
}
file { '/etc/xdg/openbox/lubuntu-rc.xml':
	owner => 'root',
	group => 'root',
	mode => 644,
	source => "puppet:///modules/keyboard/lubuntu-rc.xml",
	require => Package["xmodmap"]
}
}