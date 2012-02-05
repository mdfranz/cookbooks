package("lxc")
package("debootstrap")
package("libvirt-bin")

directory "/cgroup" do
	owner "root"
	action :create
end
