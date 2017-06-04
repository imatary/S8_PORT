.class public Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GetPolicyReceiver.java"


# static fields
.field private static final MSG_GET_NEW_POLICY:I = 0x0

.field private static final PREFKEY_REQUESTED_WEEKLY_EVENT_TIME:Ljava/lang/String; = "ReqeustedWeeklyTime"

.field public static final SETEVENTSHAREPOLICY:Ljava/lang/String; = "com.samsung.android.intent.action.SETEVENTSHAREPOLICY"

.field private static final TAG:Ljava/lang/String; = "GetPolicyRecevier"

.field private static final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private static mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->callJobFinished(Landroid/content/Context;)Z

    :cond_0
    const-string/jumbo v0, "ReqeustedWeeklyTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static registerEventAlarmForBooting(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    const-string/jumbo v3, "ReqeustedWeeklyTime"

    invoke-static {p0, v3, v10, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-int/lit8 v3, v8, 0x7

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->setAlarm(Landroid/content/Context;J)V

    const-string/jumbo v3, "ReqeustedWeeklyTime"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getPolicy(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->updateExpireTime(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static registerEventShareAlarm(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x7

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getPolicy(Landroid/content/Context;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->setAlarm(Landroid/content/Context;J)V

    const-string/jumbo v3, "ReqeustedWeeklyTime"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private static setAlarm(Landroid/content/Context;J)V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mPolicy:Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->schedule(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.samsung.android.intent.action.SETEVENTSHAREPOLICY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GetPolicyRecevier"

    const-string/jumbo v2, "onReceive SETEVENTSHAREPOLICY alarmType : "

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
