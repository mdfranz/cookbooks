package("lxc")
package("debootstrap")
package("libvirt-bin")

directory "/cgroup" do
	owner "root"
    group "root"
	action :create
end

execute "mount" do
    command "mount none -t cgroup /cgroup"
    user "root"
    not_if "mount | grep cgroup"
end
