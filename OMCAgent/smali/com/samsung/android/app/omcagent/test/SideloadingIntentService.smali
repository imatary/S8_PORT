.class public Lcom/samsung/android/app/omcagent/test/SideloadingIntentService;
.super Landroid/app/IntentService;
.source "SideloadingIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_SideloadingIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Sideloading State: Start to Sideloading & Install"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v2, "filePath"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Package name is empty!!"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/test/SideloadingIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getState()Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->run()V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Sideloading State: Finish to Sideloading & Install"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0
.end method
