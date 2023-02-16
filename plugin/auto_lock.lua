function auto(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end

if text == "تفعيل القفل التلقائي" then
if not msg.Manger then
return send(msg.chat_id,msg.id,"• هذا الامر يخص المدير")
end
Redis:del(Fast..msg.chat_id..'chat_lock:lock')
send(msg.chat_id,msg.id,"• تم تفعيل قفل الدردشة التلقائي")
end
if text == "تعطيل القفل التلقائي" then
if not msg.Manger then
return send(msg.chat_id,msg.id,"• هذا الامر يخص المدير")
end
Redis:set(Fast..msg.chat_id..'chat_lock:lock',true)
send(msg.chat_id,msg.id,"• تم تعطيل قفل الدردشة التلقائي")
end

if text == "القفل التلقائي" then
if not msg.Manger then
return send(msg.chat_id,msg.id,"• هذا الامر يخص المدير")
end
if Redis:get(Fast..msg.chat_id..'chat_lock:lock') then
state = "معطل"
else
state = "مفعل"
end
if Redis:get(Fast..msg.chat_id..'time:chat:lock')  then
lock_time = Redis:get(Fast..msg.chat_id..'time:chat:lock') 
else
lock_time = 00
end
if Redis:get(Fast..msg.chat_id..'time:chat:on') then
on_time = Redis:get(Fast..msg.chat_id..'time:chat:on')
else
on_time = 00
end
local current_time = https.request("https://xnxx.fastbots.ml/apies/time.php")
local txx = "• القفل التلقائي { "..state.." }\n• الوقت الان "..current_time.."\n\n• وقف بدايه القفل » "..lock_time.."\n• وقت نهايه القفل » "..on_time
return send(msg.chat_id,msg.id,txx)
end

if text then
if Redis:get(Fast..msg.sender_id.user_id..'set:time:chat') then
if text == "الغاء" then
Redis:del(Fast..msg.sender_id.user_id..'set:time:chat')
return send(msg.chat_id,msg.id,"• تم الغاء الامر")
end
if text:match("(%d+)") then
if tonumber(text) <= 24 then
if tonumber(text) == 24 then
lock_time = 00
else
lock_time = tonumber(text)
end
Redis:del(Fast..msg.sender_id.user_id..'set:time:chat')
Redis:set(Fast..msg.sender_id.user_id..'set:time:chat:on',true)
Redis:del(Fast..msg.chat_id..'time:chat:lock')
Redis:set(Fast..msg.chat_id..'time:chat:lock',math.floor(tonumber(lock_time)))
return send(msg.chat_id,msg.id,"• تم حفظ وقف القفل الساعة "..text.."\n ارسل الان وقت التفعيل ")
else
return send(msg.chat_id,msg.id,"• لقد ارسلت وقت خاطئ")
end
else
return send(msg.chat_id,msg.id,"• لقد ارسلت وقت خاطئ")
end
elseif Redis:get(Fast..msg.sender_id.user_id..'set:time:chat:on') then
if text == "الغاء" then
Redis:del(Fast..msg.sender_id.user_id..'set:time:chat:on')
return send(msg.chat_id,msg.id,"• تم الغاء الامر")
end
if text:match("(%d+)") then
if tonumber(text) <= 24 then
if tonumber(text) == 24 then
lock_time = 00
else
lock_time = tonumber(text)
end
Redis:del(Fast..msg.sender_id.user_id..'set:time:chat:on')
Redis:del(Fast..msg.chat_id..'time:chat:on')
Redis:set(Fast..msg.chat_id..'time:chat:on',math.floor(tonumber(lock_time)))
return send(msg.chat_id,msg.id,"• تم حفظ وقف الفتح الساعة "..lock_time.."\n")
else
return send(msg.chat_id,msg.id,"• لقد ارسلت وقت خاطئ")
end
else
return send(msg.chat_id,msg.id,"• لقد ارسلت وقت خاطئ")
end

end
end



if text == "ضع وقت قفل الدردشة" then
if not msg.Manger then
return send(msg.chat_id,msg.id,"• هذا الامر يخص المدير")
end
Redis:set(Fast..msg.sender_id.user_id..'set:time:chat',true)
send(msg.chat_id,msg.id,"• ارسل الان الوقت بنظام 24 ساعة")
end
if not Redis:get(Fast..msg.chat_id..'chat_lock:lock') then
if Redis:get(Fast..msg.chat_id..'time:chat:lock') then
local current_time = https.request("https://xnxx.fastbots.ml/apies/auto.php")
if tonumber(Redis:get(Fast..msg.chat_id..'time:chat:lock')) - tonumber(current_time) == tonumber(0) then
Redis:set(Fast.."Lock:text"..msg_chat_id,true)
Redis:del(Fast..msg.chat_id..'time:chat:lock')
send(msg.chat_id,0,"• تم قفل الدردشة تلقائيا")
end
end
if Redis:get(Fast..msg.chat_id..'time:chat:on') then
local current_time = https.request("https://xnxx.fastbots.ml/apies/auto.php")
if tonumber(current_time) == tonumber(Redis:get(Fast..msg.chat_id..'time:chat:on')) then
Redis:del(Fast.."Lock:text"..msg_chat_id) 
Redis:del(Fast..msg.chat_id..'time:chat:on')
send(msg.chat_id,0,"• تم فتح الدردشة تلقائيا")
        
        
        if($text =="م3"  ){

	if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {	if ($tc == 'group' | $tc == 'supergroup'){  

	$add = $settings["information"]["added"];

if ($add == true) {

  	bot('sendmessage',[

  	'chat_id'=>$chat_id,

  	'text'=>"📮- اهـلا بـك فـي اوامـر م3 للاعدادات 

➺┄─━━━━━━━━━━─┄⊰

🔘¦ وضع قوانين + نص ⊱ لوضع قوانين ⊰ 

كمثال { وضع قوانين ممنوع المعرفات } 

🔘¦ وضع الاعضاء + العدد ⊱ لتحدد عدد لاضافة ⊰ 

كمثال { وضع الاعضاء 5 } 

🔘¦ وضع تكرار + العدد ⊱ لوضع التكرار ⊰ 

كمثال { وضع تكرار 5 } 

🔘¦ لمنع كلمه [ منع كلمه نص ]

كمثال { منع كلمه احا } 

🔘¦ الغاء منع كلمه [ منع كلمه نص ]

كمثال { الغاء منع كلمه احا }

🔘¦ [ لعرض قائمة المنع ] الممنوعات [ لحذف قائمة المنع ] مسح الممنوعات

🔘¦ تثبيت ⊱ بالرد على الرسالة لتثبيتها ⊰ 

🔘¦ الغاء التثبيت ⊱ لالغاء تثبيت الرسالة ⊰ 

🔘¦ الادمنية ⊱ لإظهار الأدمنية في المجموعة ⊰

🔘¦ لتشفير نص [ تشفير + الكلمه ]

🔘¦ لفك تشفير نص [ الغاء تشفير + الشفره ]

🔘¦ لزخرفه نص [ زخرفه + الكلمه ]

كمثال { زخرفه شيكو } 

🔘¦ [ لتظيف الرسائل ] تنظيف + عدد

كمثال { تنظيف 100 } 

🔘¦ [ لمسح رساله بالرد ] مسح

🔘¦ لعمل تاك [ تاك للكل ] 

🔘¦ لاظهار اسمك { اسمي } 

🔘¦ لاظهار الوقت { الوقت } 

🔘¦ لاظهار الايدي { ايدي } 

🔘¦ لكشف شخص بالرد { كشف } 

🔘¦ لاظهار جهاتك { جهاتي } 

🔘¦ لاظهار رتبتك { رتبتي } 

➺┄─━━━━━━━━━━─┄ ⊰

📮¦تم عرض م3

",

    'reply_to_message_id'=>$message_id,

  	]);

  	}

else

{

bot('sendmessage',[

	'chat_id'=>$chat_id,

	'text'=>"📍 لم يتم تفعيل البوت في المجموعة ! م̷ـــِْن فضلك قم بتفغيل البوت بإرسال

ℹ️ `تفعيل ` البوت يتم تفعيله بشكل مجاني ",

  'reply_to_message_id'=>$message_id,

'reply_markup'=>$inlinebutton,

 ]);

    }	

  }

	}

}

if($text =="م4"  ){

	if ( $status == 'creator' or $status == 'administrator' or in_array($from_id,$Dev) or in_array($from_id,$manger) or in_array($from_id,$admin_user) or in_array($from_id,$developer)) {	if ($tc == 'group' | $tc == 'supergroup'){  

	$add = $settings["information"]["added"];

if ($add == true) {

  	bot('sendmessage',[

  	'chat_id'=>$chat_id,

  	'text'=>"📮- اهـلا بـك فـي اوامـر الرفع / التنزيل م4

➺┄─━━━━━━━━━━─┄⊰

🔘¦ الادمنيه ⊱ لعرض الادمنية ⊰ 

🔘¦ المدراء  ⊱ لعرض المدراء ⊰ 

🔘¦ المميزين  ⊱ لعرض المميزين ⊰ 

🔘¦ المنشئين ⊱ لعرض المنشئين ⊰ 

🔘¦ رفع - تنزيل ادمن

🔘¦ رفع - تنزيل مدير

🔘¦ رفع - تنزيل مميز

🔘¦ رفع - تنزيل الادمنيه

🔴¦ اوامر مسح الادمنيه 👇

🔘¦ مسح الادمنيه

🔘¦ مسح المميزين

🔘¦ مسح المدراء

🔘¦ مسح المطورين

➺┄─━━━━━━━━━━─┄ ⊰

📮¦تم عرض م4

",

    'reply_to_message_id'=>$message_id,

  	]);

  	}

else

{

bot('sendmessage',[

	'chat_id'=>$chat_id,

	'text'=>"📍 لم يتم تفعيل البوت في المجموعة ! م̷ـــِْن فضلك قم بتفغيل البوت بإرسال

ℹ️ `تفعيل ` البوت يتم تفعيله بشكل مجاني ",

  'reply_to_message_id'=>$message_id,

'reply_markup'=>$inlinebutton,

 ]);

    }	

  }

	}

}
end
end
end


end
return {Fast = auto}
