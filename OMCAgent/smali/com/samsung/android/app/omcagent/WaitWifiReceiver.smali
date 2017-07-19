.class public Lcom/samsung/android/app/omcagent/WaitWifiReceiver;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "WaitWifiReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.OOBE_WAIT_WIFI"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "wait wifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setWaitWifi(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.intent.OOBE_USE_DATA"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "use data"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setWaitWifi(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installSelectedContents(Landroid/content/Context;)V

    goto :goto_0
.end method
