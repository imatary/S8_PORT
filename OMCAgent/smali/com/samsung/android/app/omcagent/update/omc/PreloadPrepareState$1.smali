.class final Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$1;
.super Ljava/lang/Object;
.source "PreloadPrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Preload Prepare State: Validate preloaded packages"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkPackageList(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Fail to check package list"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkNetworkBearerAndCharging(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Fail to check charging and network info"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "505"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$1;->ADD_PRELOAD_RESOURCE_INFO_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VERIFY_PRELOAD_SOURCE_PACKAGE"

    return-object v0
.end method
