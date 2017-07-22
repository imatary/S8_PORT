.class public Lcom/android/phone/SmartCallNotificationMgr;
.super Ljava/lang/Object;
.source "SmartCallNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SmartCallNotificationMgr$1;,
        Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field public static final mAlarm:[I

.field public static mAlarmNoti:Z

.field private static mSmartCallNotiCount:I

.field private static sInstance:Lcom/android/phone/SmartCallNotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSelectedUnavailableNotify:Z

.field private mSmartCallsFilterNotification:Landroid/app/Notification;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field public statusBarHelper:Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;


# direct methods
.method static synthetic -get0(Lcom/android/phone/SmartCallNotificationMgr;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallsFilterNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SmartCallNotificationMgr;->mAlarmNoti:Z

    sput v0, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/16 v2, 0xa

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/SmartCallNotificationMgr;->mAlarm:[I

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSelectedUnavailableNotify:Z

    new-instance v1, Lcom/android/phone/SmartCallNotificationMgr$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SmartCallNotificationMgr$1;-><init>(Lcom/android/phone/SmartCallNotificationMgr;)V

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/SmartCallNotificationMgr;Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;)V

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->statusBarHelper:Lcom/android/phone/SmartCallNotificationMgr$StatusBarHelper;

    iget-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.SMARTCALLNOTI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SmartCallNotificationMgr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SmartCallNotificationMgr;
    .locals 4

    const-class v1, Lcom/android/phone/SmartCallNotificationMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/SmartCallNotificationMgr;->sInstance:Lcom/android/phone/SmartCallNotificationMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/SmartCallNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/SmartCallNotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/SmartCallNotificationMgr;->sInstance:Lcom/android/phone/SmartCallNotificationMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/SmartCallNotificationMgr;->sInstance:Lcom/android/phone/SmartCallNotificationMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "SmartCallNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SmartCallNotificationMgr;->sInstance:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SmartCallNotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelSmartCallsFilterNotification()V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v0, "cancelSmartCallsFilterNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SmartCallNotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0222

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "first_call"

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "first_call"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallsFilterNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/SmartCallNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public setSmartCallNotificationAlarm(I)V
    .locals 14

    const/16 v13, 0xc

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "SmartCallNotificationMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSmartCallNotificationAlarm count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.SMARTCALLNOTI"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",12,0,0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "smartcall_noti_date"

    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "smartcall_noti_date"

    invoke-static {v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "SmartCallNotificationMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "First mYear :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mMonth :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mDay :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    sget-boolean v6, Lcom/android/phone/SmartCallNotificationMgr;->mAlarmNoti:Z

    if-eqz v6, :cond_6

    :cond_5
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v10, v6}, Ljava/util/Calendar;->set(II)V

    aget-object v6, v3, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v11, v6}, Ljava/util/Calendar;->set(II)V

    aget-object v6, v3, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v12, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xa

    invoke-virtual {v1, v6, v13}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    sget-object v6, Lcom/android/phone/SmartCallNotificationMgr;->mAlarm:[I

    aget v6, v6, p1

    invoke-virtual {v1, v12, v6}, Ljava/util/Calendar;->add(II)V

    const-string/jumbo v6, "SmartCallNotificationMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set Next Alarm mYear :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mMonth :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mDay :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v10, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    add-int/lit8 v6, p1, 0x1

    sput v6, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    const-string/jumbo v6, "smartcall_noti_count"

    sget v7, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    invoke-static {v6, v7}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    sput-boolean v9, Lcom/android/phone/SmartCallNotificationMgr;->mAlarmNoti:Z

    :cond_6
    return-void
.end method

.method public showSmartCallsFilterNotification()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string/jumbo v6, "showSmartCallsFilterNotification()..."

    invoke-direct {p0, v6}, Lcom/android/phone/SmartCallNotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "smartcall_noti_count"

    invoke-static {v6, v10}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    sget v6, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportedSmartCallNoti()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/phone/smartcall/SmartCallPrivacyNoticeActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "feature_usa"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0bf1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v6, 0x7f02014f

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const-string/jumbo v6, "feature_usa"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0bee

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallsFilterNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallsFilterNotification:Landroid/app/Notification;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v9, 0x17

    invoke-virtual {v6, v11, v9, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string/jumbo v6, "first_call"

    invoke-static {v6, v10}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v6, "support_smart_call_mcc"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    :goto_2
    sget v6, Lcom/android/phone/SmartCallNotificationMgr;->mSmartCallNotiCount:I

    invoke-virtual {p0, v6}, Lcom/android/phone/SmartCallNotificationMgr;->setSmartCallNotificationAlarm(I)V

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",12,0,0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "smartcall_noti_date"

    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0bf0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0bed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v8, "IUND"

    invoke-static {v6, v7, v8}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/SmartCallNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0d01f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
