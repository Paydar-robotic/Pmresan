function run(msg, matches)
	if matches[1]:lower() == "logo" and is_mod(msg) then 
		local num = matches[2]
		if tonumber(num) > 30 then
			tdcli.sendMessage(msg.chat_id_, 0, 1, "تعداد لوگو 30 عدد میباشد.\nلطفا عدد انتخاب لوگو را بین 1 و 30 وارد کنید.", 1, 'html')
		else
			local name = URL.escape(matches[3])
			local name2 = matches[4]
			local url = "http://irapi.ir/logo/index.php?text="..name.."&effect="..num
			local  file = download_to_file(url,'logo.jpg')
			tdcli.sendPhoto(msg.chat_id_, 0, 0, 1, nil, file, "🆔 @PaydarTeam", dl_cb, nil)
		end
	end
	if matches[1]:lower() == "logo2" and is_mod(msg) then 
		local num = matches[2]
		if tonumber(num) == 1 then
			local name = matches[3]
			local name2 = matches[4]
			local url = "http://irapi.ir/logo/index.php?effect=12&text2="..name.."&text="..name2
			local  file = download_to_file(url,'logo.jpg')
			tdcli.sendPhoto(msg.chat_id_, 0, 0, 1, nil, file, "🆔 @PaydarTeam", dl_cb, nil)
		elseif tonumber(num) == 2 then
			local name = matches[3]
			local name2 = matches[4]
			local url = "http://irapi.ir/logo/index.php?effect=27&text2="..name.."&text="..name2
			local  file = download_to_file(url,'logo.jpg')
			tdcli.sendPhoto(msg.chat_id_, 0, 0, 1, nil, file, "🆔 @PaydarTeam=\", dl_cb, nil)
		end
	end
end
return {
  patterns = {
		"^[/!#](logo) (%d+) (.+)$",
		"^[/!#](logo2) (%d+) (.+) (.+)$"
	}, 
	run = run
}

-- end by @Ee_Ll_Aa :)
