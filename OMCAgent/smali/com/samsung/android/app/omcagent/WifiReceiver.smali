.class public Lcom/samsung/android/app/omcagent/WifiReceiver;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "WifiReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive broadcast message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v0, p3

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/app/omcagent/WifiReceiver$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/samsung/android/app/omcagent/WifiReceiver$1;-><init>(Lcom/samsung/android/app/omcagent/WifiReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method
