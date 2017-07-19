.class public abstract Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Context is null!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Intent is null!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Action is null!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/common/util/GeneralUtils;->isOwner()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "No action is available when User is not owner"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/samsung/android/common/util/GeneralUtils;->setApplicationEnableSetting(Landroid/content/Context;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end method
