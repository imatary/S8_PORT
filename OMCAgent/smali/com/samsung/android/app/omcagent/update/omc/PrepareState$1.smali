.class final Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;
.super Ljava/lang/Object;
.source "PrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/PrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
    .locals 5

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Prepare State: Validate downloaded packages"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getDownloadResultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to download packages"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPacakgeFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->setSourcePackagePath(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to read packages"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "503"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPackageHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->isChecksumMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to match packages hash"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "508"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->verifySignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to match signature"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "502"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkPackageList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to check package list"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "505"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getSourcePackagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkNetworkBearerAndCharging(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Fail to check charging and network info"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "505"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->VERIFY_FAIL:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$1;->ADD_RESOURCE_INFO_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VERIFY_SOURCE_PACKAGE"

    return-object v0
.end method
