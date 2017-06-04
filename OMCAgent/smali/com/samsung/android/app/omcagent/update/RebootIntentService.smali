.class public Lcom/samsung/android/app/omcagent/update/RebootIntentService;
.super Landroid/app/IntentService;
.source "RebootIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_RebootIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/RebootIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Reboot timer started"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->rebooting(Landroid/content/Context;)V

    return-void
.end method
