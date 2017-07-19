.class final Lcom/samsung/android/app/omcagent/update/omc/InstallState$3;
.super Ljava/lang/Object;
.source "InstallState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/InstallState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/InstallState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;)Lcom/samsung/android/app/omcagent/update/omc/InstallState;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Install State: Copying packages to target directories"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->copyPackages(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Fail to copy packages"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "510"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$3;->INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$3;->START_TO_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COPY_SOURCES"

    return-object v0
.end method
