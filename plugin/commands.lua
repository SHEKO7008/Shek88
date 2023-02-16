function cmd(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if text == 'الاوامر' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '{ حماية }', data = senderr..'/help1'}, {text = '{الأدامن}', data = senderr..'/help2'}, 
},
{
{text = '{المدراء}', data = senderr..'/help3'}, {text = '{ المنشئين }', data = senderr..'/help4'}, 
},
{
{text = '{ المالكين}', data = senderr..'/help5'}, {text = '{ للتسلية }', data = senderr..'/helpp6'}, 
},
{
{text = '{ م المطور }', data = senderr..'/helpsudo'},{text = '{ الالعاب }', data = senderr..'/help6'}, 
},
{
{text = '{ اوامر التسلية }', data = senderr..'/helpts'},
},
{
{text = '{ القفل / الفتح }', data = senderr..'/NoNextSeting'}, {text = '{ التعطيل / التفعيل }', data = senderr..'/listallAddorrem'}, 
},
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
return send(msg_chat_id,msg_id, [[*
• اوامــر البــوت الرئيسيـة 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• { م1 } ← اوامر الحماية
• { م2 } ← اوامر الادامن
• { م3 } ← اوامر المدراء
• { م4 } ← اوامر المنشئين
• { م5 } ← اوامر المالكين
• { م6 } ← اوامر التسلية
• { م المطور } ← اوامر المطور
*]],"md",false, false, false, false, reply_markup)

elseif text == 'م المطور' then
if not msg.Dev then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر المطور الاساسي  
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل  ←  تعطيل
• رفع  تنزيل ← مطور اساسي
• المطورين الاساسيين
• مسح المطورين الاساسيين
• رفع  تنزيل ← مطور ثانوي
• المطورين الثانويين  
• مسح المطورين الثانويين
• رفع  تنزيل ← مطور
• المطورين ← مسح المطورين
• تغيير المطور الاساسي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل الوضع المدفوع + الايدي 
• الغاء الوضع المدفوع + الايدي
• حظر جروب + { الايدي }
• غادر ← + { الايدي }
• اسم بوتك + غادر بالجروب
• تفعيل تعطيل الاشتراك الاجباري
• الاشتراك الاجباري
• تغيير الاشتراك الاجباري
• تفعيل تعطيل الاشتراك الاجباري للجروب
• الاشتراك الاجباري للجروب
• تعيين عدد الاعضاء + {العدد}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• حظر عام ، الغاء العام
• قائمة العام ، مسح قائمة العام
• كتم عام ، الغاء كتم عام
• المكتومين عام
• مسح المكتومين عام
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تغيير ، مسح ←{ اسم البوت }
• ضع صورة للترحيب 
• الاحصائيات
• ذيع + ايدي الجروب بالرد
• اذاعة ، اذاعة خاص
• اذاعة بالتوجيه ، اذاعة بالتثبيت
• اذاعة خاص بالتوجيه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل تعطيل جلب النسخة التلقائية
• جلب نسخة احتياطية
• رفع النسخة الاحتياطية بالرد
• رفع نسخة تشاكي بالرد
• جلب نسخة الردود 
• رفع نسخة الردود بالرد
• معلومات التنصيب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تعيين ، مسح ← { الايدي عام }
• اضف ، مسح ← {رد عام}
• اضف ، مسح ← {رد عام متعدد}
• ضع ، مسح ← { الترحيب عام } 
• ضع ، مسح ← { رسالة المطور }
• الردود العامة ، مسح الردود العامة
• اضف مسح صوت عام
• الصوتيات العامة 
• مسح الصوتيات العامة
• منع عام ، الغاء منع عام
• قائمة المنع عام
• مسح قائمة المنع عام
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اضف مسح ← سؤال
• الاسئلة المضافة
• مسح الاسئلة المضافة
• اضف مسح ← لغز 
• الالغاز ~ مسح الالغاز
• اضف مسح ← سؤال كت 
• اسئلة كت
• اضف اسئلة كت
• مسح اسئلة كت
• اضف موسيقى 
• مسح موسيقى بالرد 
• قائمة الموسيقى 
• مسح قائمة الموسيقى 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التالية↓
• البوت الخدمي ، المغادرة ، الاذاعة
• التواصل ، الاحصائيات
• ملف ← { اسم الملف }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح جميع الملفات 
• المتجر ، الملفات
• تحديث ، تحديث السورس
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المطور في البوت
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع، تنزيل ← { مالك }
• المالكين ، مسح المالكين
• تنزيل جميع الرتب
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'اوامر التسلية' then
if not msg.Dev then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
︙اوامر التسلية كالاتي: 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الامر ، تفعيل ، تعطيل  ← { الامر }
• غنيلي ، ريمكس ، اغنية ، شعر
• صورة ،  متحركة
• انمي ، ميمز
• مسلسل ، فلم
• حساب العمر( احسب + تاريخ الميلاد)
• معنى اسم + الاسم
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م1' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر الحماية كالاتي ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• قفل ، فتح ← الامر 
• تستطيع قفل حماية كما يلي ...
• ← { بالتقييد ، بالطرد ، بالكتم }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الكل ~ الدخول
• الروابط ~ المعرف
• التاك ~ الشارحة
• التعديل ~ تعديل الميديا
• المتحركة ~ الملفات
• الصور ~ الفيديو 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الماركداون ~ البوتات
• التكرار ~ المنشورات
• السيلفي ~ الملصقات
• الانلاين ~  الدردشة
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• التوجيه ~ الاغاني
• الصوت ~ الجهات
• الاشعارات ~ التثبيت 
• الوسائط ~ التفليش
• وسائط المميزين
• الفشار ~ الفارسية
• الإنجليزية
• الكفر ~ الاباحي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م2' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر ادامن الجروب ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع، تنزيل ← مميز
• المميزين ← مسح المميزين 
• رفع الادامن
• تاك ، تاك للكل ، الجروب
• منع ، الغاء منع
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاوامر التالية ← {بالرد ، بالمعرف}
• حظر ، طرد ← الغاء حظر 
• كتم ← الغاء كتم
• تقييد ← الغاء تقييد
• كشف ، رفع ← القيود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• عرض القوائم كما يلي ...
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• المنشئين الاساسيين ، المنشئين 
• المدراء ، الادامن ، المميزين
• المشرفين ، المكتومين
• قائمة المنع
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تثبيت ، الغاء تثبيت
• الرابط ، الاعدادات ، الحماية
• الترحيب ، القوانين
• ضع رتبة  ← { اسم الرتبة } 
• تحكم ← {بالرد ، بالمعرف}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التالية :
• الترحيب ، الرابط 
• ردود البوت ، الالعاب
• اطردني ، التسلية
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح ← الاوامر التالية
• القوائم ، قائمة المنع ، المميزين
• الرابط ، القوانين ، الصورة
• مسح ← { عدد }
• مسح ← { بالرد }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر الاعضاء والادامن 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• ايدي ، ايدي بالرد ، رسائلي
• تفاعلي ، لقبي ، بايو ، ترند
• جهاتي ، تعديلاتي ، نقاطي
• بيع نقاطي + العدد
• مسح نقاطي
• قول + الكلمة
• زواج ، ثنائي اليوم 
• الوقت ، الساعة ، التاريخ
• الصوتيات ، الصوتيات العامة
• زخرفة ، تحويل الصيغ ، غنيلي
• همسه ، اسم برجك ، صورتي
• صلاحياتي ، رتبتي
• صلاحياته ← {بالرد ، بالمعرف}
• الرتبة ← {بالرد ، بالمعرف}
• التفاعل ← {بالرد ، بالمعرف}
• كشف ← {بالرد ، بالمعرف}
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م3' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر المدراء في الجروب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← ادمن
• الادامن ← مسح الادامن
• تنزيل الكل ← {بالرد ، بالمعرف}
• ️︙كشف ، طرد ، قفل ← البوتات
• قفل البوتات ← بالطرد
• فحص ← البوت
• طرد ← المحذوفين 
• قفل فتح ← ارسال القناة
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• لتغيير رد الرتب في البوت
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تغيير رد ← {اسم الرتبة والنص} 
• المطور ، المالك ، المنشئ الاساسي
• المنشئ ، المدير ، الادمن
• المميز ، العضو
• مسح رد ← { اسم الرتبة }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• وضع الرتب ← { بالرد ، بالمعرف}
• ضع رتبة ← { اسم الرتبة }
• مسح رتبة ← { بالرد ، بالمعرف}
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• وضع ، ضع ← الاوامر التالية
• اسم + اسم الجروب
• رابط ، صورة
• قوانين ، وصف ،الترحيب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التالية :
• الايدي ، الايدي بالصورة 
• ايدي العضو ، البايو
• صورتي ، اسمي
• الردود ، الابراج
• غنيلي ، الصيغ ، قول
• تنبيه الاسماء ، الصوتيات 
• الصوتيات العامة
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• مسح ← + { الامر } 
• المحظورين ، المطرودين
• المكتومين ← المقيدين
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• ترتيب الاوامر ← استعاده الاوامر
• اضف ، مسح ← { رد }
• الردود ، مسح الردود
• اضف ، مسح ← { رد متعدد}
• الردود المتعدده
• مسح الردود المتعدده
• تاك عام ، all
• الميديا ← امسح
• اضف رسائل + العدد { بالرد}
• اضف نقاط + العدد { بالرد }
• اضف تعديلات + العدد {بالرد}
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م4' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر المنشئ الاساسي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ←{ منشئ }
• المنشئين ، مسح المنشئين
• رفع ، تنزيل ←{ مشرف }
• ضع لقب + اللقب ← { بالرد }
• صلاحيات الجروب
• مسح نقاطه ، رسائله ← {بالرد} 
• تفعيل ، تعطيل ← منع التصفية
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المنشئ الجروب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← { مدير }
• المدراء ، مسح المدراء
• تغيير ، مسح ←{ الايدي }
• تعيين ، مسح ←{ الايدي }
• اضف ، مسح ← { امر }
• الاوامر المضافة ، مسح الاوامر المضافة
• ضع التكرار ← { عدد }
• تفعيل الاوامر ← { اوامر اساسيه }
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• تفعيل ، تعطيل ← الاوامر التالية :
• الردود العامة ، الطرد ، الحظر
• الرفع ، التاك ، نزلني ، ضع رتبة 
• تاك عام ، المسح التلقائي
• ضع عدد المسح + { عدد }
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م5' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end

if ChannelJoin(msg) == false then  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر مالك الجروب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ←{ مالك }
• المالكين ، مسح المالكين
 •تنزيل جميع الرتب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر المالكين 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← { منشئ اساسي }
• المنشئين الاساسيين،
• مسح المنشئين الاساسيين
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
elseif text == 'م6' then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end

if ChannelJoin(msg) == false then  
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناة البوت', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• اوامر التسلية
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• رفع ، تنزيل ← الاوامر التالية ↓
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• غبي 
• سمب
• حمار
• خول
• قرد 
• عره
• متوحد
• متوحده
• كلب 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر التاك 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاغبياء
• الحمير
• الخولات
• السمب
• المتوحدين
• الكلاب
• العرر
• القرود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• اوامر الترفيه 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• زخرفة + النص
• مثال زخرفة محمود
• احسب + عمرك
• مثال احسب 2001/8/5
• معني + الاسم 
• مثال معني محمود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• نسبه الحب/ الكره
• نسبه الرجوله/ الانوثه 
• نسبه الذكـــــاء/ الغباء 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• الاوامــر بالـــرد  ⇣ 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
• زواج ~ طلاق
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
end

end
return {Fast = cmd}