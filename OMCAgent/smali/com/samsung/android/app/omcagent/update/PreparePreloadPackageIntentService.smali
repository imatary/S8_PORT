.class public Lcom/samsung/android/app/omcagent/update/PreparePreloadPackageIntentService;
.super Landroid/app/IntentService;
.source "PreparePreloadPackageIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_PreparePreloadAppIconIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Preload App Prepare State: Start to load Preloaded package"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/PreparePreloadPackageIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getState()Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;->FINISH_PACKAGE_PREPARE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Preload App Prepare State: Finish to load preloaded package"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
