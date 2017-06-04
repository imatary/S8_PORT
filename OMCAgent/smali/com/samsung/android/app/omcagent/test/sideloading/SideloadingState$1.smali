.class final Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;
.super Ljava/lang/Object;
.source "SideloadingState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
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
.method public run(Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;)Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
    .locals 7

    const/16 v6, 0x1f9

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Sideloading State: Validate local omc packages"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUI(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getSourceOMCPackagePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to read packages"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "503"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x194

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getSourceOMCPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->verifySignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to match packages hash"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1f6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getSourceOMCPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->checkPackageList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to check package list"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Sideloading State: Collect Omc info"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getSourceOMCPackagePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "omc.info"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getTextInZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/omcagent/test/sideloading/ParserOmcInfo;->read(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to appInfo database"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->instance:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1f8

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;->updateUIFailed(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->FINISH_SIDELOADING:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Sideloading State: Initialize Internal database"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->init(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->init(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState$1;->INSTALL_APPS:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK_FILES"

    return-object v0
.end method
