class autostart { 
$packages = [ "conky", "xcompmgr", "lxpanel", "xscreensaver", "xfce4-power-manager", "pcmanfm" ]
package { $packages: ensure => "installed" }

file { "/etc/xdg/lxsession/Lubuntu":
	owner => "root",
	group => "root",
	mode => 644,
	source => "puppet:///modules/autostart/autostart",
	require => Package["conky"],
	require => Package["xcompmgr"],
	require => Package["lxpanel"],
	require => Package["xscreensaver"],
	require => Package["xfce4-power-manager"],
	require => Package["pcmanfm"]
	}
}
