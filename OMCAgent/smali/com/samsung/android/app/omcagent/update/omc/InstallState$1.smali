.class final Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;
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

    const-string v2, "Install State: Verify downloaded configuration packages"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;->START_TO_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPacakgeFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->setSourcePackagePath(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPackageHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->isChecksumMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Fail to match packages hash"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "508"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;->INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->verifySignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Fail to match signature"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "502"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;->INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkPackageList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Fail to check package list"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "505"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;->INSTALL_SOURCES_PACKAGE_FAIL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$1;->CHECK_DEVICE_STATE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VERIFY_OMC_PACKAGE"

    return-object v0
.end method
