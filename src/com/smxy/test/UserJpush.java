//package com.smxy.test;
//
//import cn.jiguang.common.resp.APIConnectionException;
//import cn.jiguang.common.resp.APIRequestException;
//import cn.jpush.api.JPushClient;
//import cn.jpush.api.push.PushResult;
//import cn.jpush.api.push.model.Message;
//import cn.jpush.api.push.model.Options;
//import cn.jpush.api.push.model.Platform;
//import cn.jpush.api.push.model.PushPayload;
//import cn.jpush.api.push.model.audience.Audience;
//import cn.jpush.api.push.model.audience.AudienceTarget;
//import cn.jpush.api.push.model.notification.AndroidNotification;
//import cn.jpush.api.push.model.notification.IosNotification;
//import cn.jpush.api.push.model.notification.Notification;
//import org.apache.log4j.Logger;
//import org.apache.log4j.spi.LoggerFactory;
//
//import java.util.HashMap;
//import java.util.Map;
//
//public class UserJpush {
//
//    private static final Logger log = LoggerFactory.getLogger(UserJpush.class);
//    private static final String APPKEY = "8aa505cdfcdcc3303b280172";
//    private static final String MASTERSECRET = "ed4895c6ca5f8fdaafb1a854";
//
//
//    public static final String TITLE = "申通快递";
//    public static final String ALERT = "祝大家新春快乐12";
//    public static final String MSG_CONTENT = "申通快递祝新老客户新春快乐1";
//    public static final String TAG = "tag_api";
//
//
//    public static JPushClient jpushClient = null;
//
//    @SuppressWarnings("deprecation")
//    public static void sendPush(String title, String message, String reader) {
//        sendPush(title, message, reader, null, null, null, null);
//    }
//
//    /**
//     * @param title     推送主题
//     * @param message   推送的文字消息
//     * @param reader    接收推送人
//     * @param jump2name 点击推送时跳转的页面名称
//     * @param jump2url  点击推送时跳转的页面地址
//     * @param jump2menu 底部导航栏第几个
//     */
//    @SuppressWarnings("deprecation")
//    public static void sendPush(String title, String message, String reader, String jump2name, String jump2url, String jump2menu, String type) {
//        jpushClient = new JPushClient(MASTERSECRET, APPKEY, 3);
//        PushPayload payload = buildPushObject_android_and_ios(title, message, reader, jump2name, jump2url, jump2menu, type);
//        // PushPayload payload = buildPushObject_all_alias_alert();
//        try {
//            System.out.println(payload.toString());
//            PushResult result = jpushClient.sendPush(payload);
//            System.out.println(result + "................................");
//            log.info("Got result - " + result);
//        } catch (APIConnectionException e) {
//            log.error("Connection error. Should retry later. ", e);
//        } catch (APIRequestException e) {
//            log.error("Error response from JPush server. Should review and fix it. ", e);
//            log.info("HTTP Status: " + e.getStatus());
//            log.info("Error Code: " + e.getErrorCode());
//            log.info("Error Message: " + e.getErrorMessage());
//            log.info("Msg ID: " + e.getMsgId());
//        }
//    }
//
//    public static PushPayload buildPushObject_all_all_alert() {
//        return PushPayload.alertAll(ALERT);
//    }
//
//    public static PushPayload buildPushObject_all_alias_alert() {
//        boolean writeable = true;
//        return PushPayload.newBuilder()
//                .setPlatform(Platform.all())//设置接受的平台
//                .setAudience(Audience.all())//Audience设置为all，说明采用广播方式推送，所有用户都可以接收到
//                // .setOptions(apns_production :true)
//                .setOptions(Options.newBuilder().setApnsProduction(writeable).build())
//                .setNotification(Notification.alert(ALERT))
//
//                .build();
//    }
//
//    public static PushPayload buildPushObject_android_tag_alertWithTitle() {
//        return PushPayload.newBuilder()
//                .setPlatform(Platform.android())
//                .setNotification(Notification.android(ALERT, TITLE, null))
////                       .setAudience(Audience.alias("18888888888"))
////                       .setAudience(Audience.all())
//                .build();
//    }
//
//    public static PushPayload buildPushObject_android_and_ios(String title, String message, String reader, String jump2name, String jump2url, String jump2menu, String type) {
//        boolean available = true;
//        Map<String, String> extras = new HashMap<>();
//        extras.put("jump2name", jump2name);
//        extras.put("jump2url", jump2url);
//        extras.put("jump2menu", jump2menu);
//        extras.put("type", type);
//
//        return PushPayload.newBuilder()
//                .setPlatform(Platform.android_ios())
//                //   .setAudience(Audience.all())
//                .setAudience(Audience.alias(StrUtils.isNotBlank(reader) ? reader : "18888888888"))
//                .setMessage(Message.newBuilder().addExtra("type", type)
//                        .setMsgContent(MSG_CONTENT)
//                        .build())
//                .setOptions(Options.newBuilder().setTimeToLive(864000L).build())//离线消息保留时长 最长10天
//                .setOptions(Options.newBuilder().setApnsProduction(available).build())  //正式环境还是开发环境（正式：true,开发：false）
//                .setNotification(Notification.newBuilder()
//                        .setAlert(StrUtils.isBlank(message) ? "您有新的消息,请查看" : message)
//                        .addPlatformNotification(AndroidNotification.newBuilder()
//                                .setTitle(StrUtils.isBlank(title) ? "消息提醒" : title)
//                                .addExtras(extras)
//                                .build())
//                        .addPlatformNotification(IosNotification.newBuilder()
//                                .incrBadge(1)
//                                .addExtras(extras)
//                                .setSound("widget/test.wav") //ios独有的声音属性，替换推送通知声音。
//                                .build())
//                        .build())
//                .build();
//    }
//
//    public static PushPayload buildPushObject_ios_tagAnd_alertWithExtrasAndMessage() {
//        return PushPayload.newBuilder()
//                .setPlatform(Platform.ios())
//                .setAudience(Audience.tag_and("tag1", "tag_all"))
//                .setNotification(Notification.newBuilder()
//                        .addPlatformNotification(IosNotification.newBuilder()
//                                .setAlert(ALERT)
//                                .setBadge(5)
//                                .setSound("happy")
//                                .addExtra("from", "JPush")
//                                .build())
//                        .build())
//                .setMessage(Message.content(MSG_CONTENT))
//                .setOptions(Options.newBuilder()
//                        .setApnsProduction(true)
//                        .build())
//                .build();
//    }
//
//    public static PushPayload buildPushObject_ios_audienceMore_messageWithExtras() {
//        return PushPayload.newBuilder()
//                .setPlatform(Platform.android_ios())
//                .setAudience(Audience.newBuilder()
//                        .addAudienceTarget(AudienceTarget.tag("tag1", "tag2"))
//                        .addAudienceTarget(AudienceTarget.alias("alias1", "alias2"))
//                        .build())
//                .setMessage(Message.newBuilder()
//                        .setMsgContent(MSG_CONTENT)
//                        .addExtra("from", "JPush")
//                        .build())
//                .build();
//    }
//}
