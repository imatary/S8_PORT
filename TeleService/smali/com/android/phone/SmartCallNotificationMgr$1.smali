.class Lcom/android/phone/SmartCallNotificationMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartCallNotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SmartCallNotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SmartCallNotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/SmartCallNotificationMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SmartCallNotificationMgr$1;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/SmartCallNotificationMgr$1;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-static {v4}, Lcom/android/phone/SmartCallNotificationMgr;->-get0(Lcom/android/phone/SmartCallNotificationMgr;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/SmartCallNotificationMgr$1;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/SmartCallNotificationMgr;->cancelSmartCallsFilterNotification()V

    iget-object v4, p0, Lcom/android/phone/SmartCallNotificationMgr$1;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/SmartCallNotificationMgr;->showSmartCallsFilterNotification()V

    :cond_0
    const-string/jumbo v4, "com.samsung.intent.action.SMARTCALLNOTI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SmartCallNotificationMgr"

    const-string/jumbo v5, "SmartCallAlarmReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "smart_call_privacy_notice_donotshow"

    invoke-static {v4, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "smart_call_privacy_notice_agree"

    invoke-static {v4, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    sput-boolean v3, Lcom/android/phone/SmartCallNotificationMgr;->mAlarmNoti:Z

    iget-object v3, p0, Lcom/android/phone/SmartCallNotificationMgr$1;->this$0:Lcom/android/phone/SmartCallNotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/SmartCallNotificationMgr;->showSmartCallsFilterNotification()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
