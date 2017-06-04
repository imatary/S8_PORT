.class public Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;
.super Ljava/lang/Object;
.source "AppItemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils$VIEW_TYPE;,
        Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils$MODE;
    }
.end annotation


# static fields
.field private static final CHARGING_SIZE:I = 0xa

.field public static final ESSENTIAL_CONTENTS:Ljava/lang/String; = "essential_contents"

.field private static final MEGABYTE_UNIT:J = 0x100000L

.field public static final RESOURCE_TYPE:Ljava/lang/String; = "resource"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calConentsSize(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readDownloadingAppCount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static calDisplaySize(JLandroid/content/Context;)Ljava/lang/String;
    .locals 8

    long-to-float v3, p0

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float v0, v3, v4

    invoke-static {v0}, Lcom/samsung/android/common/util/GeneralUtils;->getNumWithRTL(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f08004b

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calWatingConentsSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-wide/16 v4, 0x0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readWatingWifiAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    const-string v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "%.2f%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v4

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f08004b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static changeStateAppInfoToPause(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x82

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "app does not exist"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is pasued."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static changeStateAppInfoToUserCancel(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x200

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readHoldingAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "holding app does not exist"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding App "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is canceled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->deletedDownloadedPackage(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v6}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->report(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static checkAndUpdateAppItemListState(Landroid/content/Context;)V
    .locals 4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    goto :goto_0
.end method

.method public static checkAndUpdateAppItemListState(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-ge v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setState(I)V

    goto :goto_0
.end method

.method public static checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z
    .locals 6

    const/16 v5, 0xc9

    const/16 v4, 0xc8

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionCode()I

    move-result v2

    const/16 v3, 0x80

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/common/util/GeneralUtils;->isPackagedInstalledLastest(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    if-eq v1, v5, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/16 v1, 0x2c3

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_0
.end method

.method private static checkState(I)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x0

    :sswitch_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x32 -> :sswitch_0
        0x50 -> :sswitch_0
        0x64 -> :sswitch_1
        0x96 -> :sswitch_1
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static createAppItem(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    return-object v0
.end method

.method public static createAppItemWithEssentialContents(Landroid/content/Context;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createAppItemWithResourceInfo(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    return-object v0
.end method

.method public static getStateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const v0, 0x7f08002d

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not implement!! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, ""

    goto :goto_0

    :sswitch_1
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string v0, ""

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0x6e -> :sswitch_2
        0x96 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xaa -> :sswitch_3
        0xbe -> :sswitch_3
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_9
        0x190 -> :sswitch_6
        0x200 -> :sswitch_8
        0x2bc -> :sswitch_7
    .end sparse-switch
.end method

.method public static installMandatoryContents(Landroid/content/Context;)V
    .locals 7

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Downloadable resource Info does not exist"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readInstallableMandantoryAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Downloadable Mandatory app does not exist"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readWatingWifiAppInfoListCnt_V4(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "remove notification - wait for wifi"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    return-void

    :cond_3
    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->execute(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->execute(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "remain waiting apps"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static installResources(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Downloadable resource Info does not exist"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->execute(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static installSelectedApps(Landroid/content/Context;)V
    .locals 10

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readWatingWifiAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    :cond_0
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "AppInfo list is null"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_1

    :cond_3
    invoke-static {v4, v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isMoreThan10MB(J)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isFree(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {p0}, Lcom/samsung/android/common/util/DeviceUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p0, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->changeStateAppInfoToPause(Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, p0, v8, v9}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->execute(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v7, p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static installSelectedContents(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setWaitWifi(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkState(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installSelectedApps(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installResources(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isExistApp(Ljava/util/LinkedHashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static isMoreThan10MB(J)Z
    .locals 6

    const-wide/32 v4, 0x100000

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    div-long/2addr p0, v4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mb size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMoreThan10MB(Landroid/content/Context;)Z
    .locals 8

    const-wide/32 v6, 0x100000

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->calConentsSize(Landroid/content/Context;)J

    move-result-wide v0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    div-long/2addr v0, v6

    const-wide/16 v4, 0xa

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static loadApps(Landroid/content/Context;ZLjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;I)V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readInstallableAppInfoListExceptMandantoryApp_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OptionalApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - appInfoList is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readInstallableMandantoryAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    invoke-static {p0, v0, p4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->createAppItem(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_7

    :cond_6
    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static resumeToDownload(Landroid/content/Context;)V
    .locals 6

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readHoldingAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "holding app does not exist"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding App "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->execute(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p0, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto :goto_0
.end method

.method public static setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "essential_contents"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string v0, "resource"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCheckBox(Z)V

    :goto_1
    const-string v0, "resource"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_7

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    :goto_3
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    if-ne v4, p3, :cond_4

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCheckBox(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCheckBox(Z)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getOptionalApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    if-eqz p2, :cond_b

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    :goto_4
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    if-ne v4, p3, :cond_a

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    goto :goto_4

    :sswitch_4
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    goto/16 :goto_0

    :sswitch_8
    if-eqz p2, :cond_d

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    :goto_5
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleCancelBtn(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibledownloadingProgress(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleInstallingProgress(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleSizeVisibility(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsVisibleStateVisibility(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    if-ne v4, p3, :cond_c

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsEnableCheckBox(Z)V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x190 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_0
        0x4b -> :sswitch_3
        0x64 -> :sswitch_4
        0x6e -> :sswitch_4
        0x82 -> :sswitch_4
        0x96 -> :sswitch_5
        0x9b -> :sswitch_5
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_6
        0xbe -> :sswitch_6
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_7
        0x190 -> :sswitch_8
        0x200 -> :sswitch_8
        0x2bc -> :sswitch_8
    .end sparse-switch
.end method

.method public static setIsAppInstalling(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppInstallNone(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "AppInstallState is NONE."

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppInstallStarted(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Installing apps."

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setItemChecked(Landroid/widget/ListView;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public static updateContentSizeText(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    sget-object v9, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoListForSetupWizard(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sget-object v9, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableMandatoryAppInfoListForSetupWizard(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const v9, 0x7f080020

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "0"

    const v9, 0x7f080049

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_3

    const-wide/32 v10, 0x100000

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x400

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    return-object v6

    :cond_2
    const v9, 0x7f08004b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/32 v12, 0x100000

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public static updateItemIcon(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)Z
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, ""

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%.2f%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    long-to-float v9, v0

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const v9, 0x7f08004b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p2, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setPackageSize(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_0
    return v4

    :cond_1
    const v4, 0x7f02001b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    move v4, v5

    goto :goto_0
.end method

.method public static updateItemProgress(Landroid/content/Intent;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V
    .locals 6

    const-string v1, "percent"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "total_filesize"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setDownloadPercent(I)V

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setContentSize(J)V

    return-void
.end method
