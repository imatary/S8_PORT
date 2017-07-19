.class final Lcom/samsung/android/app/omcagent/update/omc/PrepareState$7;
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
    .locals 8

    const/16 v7, 0xc8

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Prepare State: Update package state and badge"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionCode()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/common/util/GeneralUtils;->isPackagedInstalledLastest(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/16 v3, 0x2c3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->updateBadgeCount(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$7;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    :goto_1
    return-object v2

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Available AppInfo does not exist. Skipped app downloaded"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$7;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE_APPLICATION_STATE"

    return-object v0
.end method
