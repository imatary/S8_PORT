.class public Lcom/samsung/android/app/omcagent/update/PrepareAppIconIntentService;
.super Landroid/app/IntentService;
.source "PrepareAppIconIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_PrepareAppIconIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "App Prepare State: Start to Download Icon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/PrepareAppIconIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getState()Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "App Prepare State: Finish to Download Icon"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
