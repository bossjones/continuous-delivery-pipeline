# Size of the CoreOS cluster created by Vagrant
$num_instances=3

# coreos-vagrant is configured through a series of configuration
# options (global ruby variables) which are detailed below. To modify
# these options, first copy this file to "config.rb". Then simply
# uncomment the necessary lines, leaving the $, and replace everything
# after the equals sign..

# Change the version of CoreOS to be installed
# To deploy a specific version, simply set $image_version accordingly. 
# For example, to deploy version 709.0.0, set $image_version="709.0.0".
# The default value is "current", which points to the current version
# of the selected channel
$image_version = "current"

# Official CoreOS channel from which updates should be downloaded
$update_channel='stable'

# Log the serial consoles of CoreOS VMs to log/
# Enable by setting value to true, disable with false
# WARNING: Serial logging is known to result in extremely high CPU usage with
# VirtualBox, so should only be used in debugging situations
$enable_serial_logging=false

# Enable port forwarding of Docker TCP socket
# Set to the TCP port you want exposed on the *host* machine, default is 2375
# If 2375 is used, Vagrant will auto-increment (e.g. in the case of $num_instances > 1)
# You can then use the docker tool locally by setting the following env var:
#   export DOCKER_HOST='tcp://127.0.0.1:2375'
$expose_docker_tcp=2375

# Setting for VirtualBox VMs
$vb_gui = false
$vb_memory = 2048
$vb_cpus = 2

# Share additional folders to the CoreOS VMs
# For example,
# $shared_folders = {'/path/on/host' => '/path/on/guest', '/home/foo/app' => '/app'}
# or, to map host folders to guest folders of the same name,
# $shared_folders = Hash[*['/home/foo/app1', '/home/foo/app2'].map{|d| [d, d]}.flatten]
#$shared_folders = {}
$share_home = false

# Enable port forwarding from guest(s) to host machine, syntax is: { 80 => 8080 }, auto correction is enabled by default.
$forwarded_ports = {2375 => 2377}
