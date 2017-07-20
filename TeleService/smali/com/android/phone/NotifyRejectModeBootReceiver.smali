.class public Lcom/android/phone/NotifyRejectModeBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyRejectModeBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NotifyRejectModeBootReceiver"

    const-string/jumbo v3, "Received broadcast for user that is not owner."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "NotifyRejectModeBootReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getDisableAutoRejectStatus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifyDisableAutoRejectNotification()V

    :cond_1
    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getDisableBlockModeStatus()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifyDisableBlockModeNotification()V

    :cond_2
    return-void
.end method
