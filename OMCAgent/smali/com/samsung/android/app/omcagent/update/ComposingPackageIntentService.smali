.class public Lcom/samsung/android/app/omcagent/update/ComposingPackageIntentService;
.super Landroid/app/IntentService;
.source "ComposingPackageIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_ComposingPackageIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Prepare State: Start to Prepare"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ComposingPackageIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getState()Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->FINISH_PACKAGE_PREPARE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Prepare State: Finish to Prepare"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
