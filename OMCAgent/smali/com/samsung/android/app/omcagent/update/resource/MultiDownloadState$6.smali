.class final Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;
.super Ljava/lang/Object;
.source "MultiDownloadState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
    .locals 5

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Resource State: Checking install options and show UI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isForceInstall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Request Force Install, Skipped Install UI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6$1;-><init>(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;->CHECK_RESOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$6;->CHECK_RESOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DISPLAY_INSTALL_UI"

    return-object v0
.end method
