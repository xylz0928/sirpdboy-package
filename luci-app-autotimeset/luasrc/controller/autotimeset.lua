module("luci.controller.autotimeset",package.seeall)
function index()
	if not nixio.fs.access("/etc/config/autotimeset") then
		return
	end
	local page
	page = entry({"admin","control","autotimeset"},cbi("autotimeset"),_("定时设置"),88)
	page.dependent = true
end
