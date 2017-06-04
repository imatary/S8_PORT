.class public Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FindNewEventReceiver.java"


# static fields
.field private static final BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final EVENT_ALARM_TYPE:Ljava/lang/String; = "eventAlarmType"

.field public static final EVENT_TYPE_DAY:I = 0x0

.field public static final EVENT_TYPE_QUARTER:I = 0x1

.field public static final EVENT_TYPE_YEAR:I = 0x2

.field private static final FIND_GALLERY_NEW_EVENT:Ljava/lang/String; = "com.samsung.android.intent.action.FIND_GALLERY_NEW_EVENT"

.field private static final KEY_ALARM_TYPE:Ljava/lang/String; = "event_alarm_type"

.field private static final MSG_FIND_NEW_EVENT:I = 0x0

.field static final PREFKEY_REQUESTED_DAILY_EVENT_TIME:Ljava/lang/String; = "ReqeustedDailyEventTime"

.field private static final PREFKEY_REQUESTED_QUARTERLY_EVENT_TIME:Ljava/lang/String; = "ReqeustedQuarterlyEventTime"

.field private static final PREFKEY_REQUESTED_YEARLY_EVENT_TIME:Ljava/lang/String; = "ReqeustedYearlyEventTime"

.field private static final TAG:Ljava/lang/String; = "FindNewEventReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver$1;-><init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->registerEventAlarmByType(Landroid/content/Context;I)V

    return-void
.end method

.method static registerEventAlarm(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v6, "ReqeustedDailyEventTime"

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v6, "ReqeustedQuarterlyEventTime"

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v6, "ReqeustedYearlyEventTime"

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getDailyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getQuarterlyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getYearlyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7, v10}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7, v11}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7, v12}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    const-string/jumbo v6, "ReqeustedDailyEventTime"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    const-string/jumbo v6, "ReqeustedQuarterlyEventTime"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    const-string/jumbo v6, "ReqeustedYearlyEventTime"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v6

    invoke-virtual {v6, p0, v10}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getDailyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v6

    invoke-virtual {v6, p0, v11}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getQuarterlyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v6

    invoke-virtual {v6, p0, v12}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getYearlyEventAlarm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2
.end method

.method private registerEventAlarmByType(Landroid/content/Context;I)V
    .locals 8

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;-><init>()V

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v4, "FindNewEventReceiver"

    const-string/jumbo v5, "Unknown alarmtype"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getDailyEventAlarm()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    const-string/jumbo v4, "ReqeustedDailyEventTime"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getQuarterlyEventAlarm()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {p1, v4, v5, v6}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    const-string/jumbo v4, "ReqeustedQuarterlyEventTime"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getYearlyEventAlarm()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-static {p1, v4, v5, v6}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->setAlarm(Landroid/content/Context;JI)V

    const-string/jumbo v4, "ReqeustedYearlyEventTime"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v4, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setAlarm(Landroid/content/Context;JI)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.intent.action.FIND_GALLERY_NEW_EVENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "eventAlarmType"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "FindNewEventReceiver"

    const-string/jumbo v5, "onReceive BOOT_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoMakeNewEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->registerEventAlarm(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->registerEventAlarmForBooting(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "com.samsung.android.intent.action.FIND_GALLERY_NEW_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoMakeNewEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "eventAlarmType"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "FindNewEventReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive FIND_GALLERY_NEW_EVENT alarmType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "event_alarm_type"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v7, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v5, v0, 0x1388

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
