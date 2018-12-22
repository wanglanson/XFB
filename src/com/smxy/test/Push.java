package com.smxy.test;

import cn.jpush.api.JPushClient;
import cn.jpush.api.push.PushResult;
import cn.jpush.api.push.model.Message;
import cn.jpush.api.push.model.Platform;
import cn.jpush.api.push.model.PushPayload;
import cn.jpush.api.push.model.audience.Audience;
import cn.jpush.api.push.model.notification.AndroidNotification;
import cn.jpush.api.push.model.notification.IosNotification;
import cn.jpush.api.push.model.notification.Notification;

import java.util.HashMap;
import java.util.Map;

public class Push{
    private static final String appKey = "8aa505cdfcdcc3303b280172";
    private static final String masterSecret = "ed4895c6ca5f8fdaafb1a854";
    public void searchExceptLogPerMin() throws Exception {

        Push push = new Push();
        Map extra = new HashMap();
        extra.put("天干物燥", "小心火烛");
        PushPayload payload = push.buildPushObject("new msg", "消息内容", "服务器端", Audience.all(), extra, false);
        PushResult result = push.jpushClient.sendPush(payload);
        System.out.println("已经执行一次=======================================================================================");
    }


    @SuppressWarnings("deprecation")
    JPushClient jpushClient = new JPushClient(masterSecret, appKey, 1000);

    @SuppressWarnings({ "rawtypes", "unchecked" })
    public PushPayload buildPushObject(String title, String content,
                                       String from, Audience audience ,Map extra,Boolean sendNotify) {
        //推送对象构造
        AndroidNotification android = AndroidNotification.newBuilder()
                .setTitle(title).addExtra("from", from)
                .addExtra("sendtime", System.currentTimeMillis()).build();
        IosNotification ios = IosNotification.newBuilder().incrBadge(1)
                .addExtra("from", from).setSound("default")
                .addExtra("sendtime", System.currentTimeMillis()).build();

        Notification notification = Notification.newBuilder().setAlert(content)
                .addPlatformNotification(android).addPlatformNotification(ios)
                .build();//通知构造
        Message msg;
        //消息构造
        if(extra==null){
            msg = Message.newBuilder().setTitle(title)
                    .setMsgContent(content).build();
        }else{
            msg = Message.newBuilder().setTitle(title)
                    .setMsgContent(content).addExtras(extra).build();
            //发送额外信息可用addExtras传map，也可直接用addExtra传键值对
        }
        if(sendNotify){
            return PushPayload.newBuilder().setPlatform(Platform.android_ios())
                    .setAudience(audience).setNotification(notification)
                    .setMessage(msg).build();
        }else{
            return PushPayload.newBuilder().setPlatform(Platform.android_ios())
                    .setAudience(audience)
                    .setMessage(msg).build();
        }

    }
}

