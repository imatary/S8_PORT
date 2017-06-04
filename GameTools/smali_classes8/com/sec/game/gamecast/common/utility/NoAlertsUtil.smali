.class public Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;
.super Ljava/lang/Object;
.source "NoAlertsUtil.java"


# static fields
.field private static mNoAlertsUtil:Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFloatingBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingBlockedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingBlockedListPrevModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedRefreshBlackListPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mNoAlertsUtil:Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NoAlertsUtil"

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlackList:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedListPrevModeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mIsNeedRefreshBlackListPolicy:Z

    const-string/jumbo v0, "NoAlertsUtil"

    const-string/jumbo v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;
    .locals 2

    const-class v1, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mNoAlertsUtil:Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    invoke-direct {v0, p0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mNoAlertsUtil:Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    :cond_0
    sget-object v0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mNoAlertsUtil:Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canOverlayWindowBlock(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x2

    const-string/jumbo v5, "NoAlertsUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "canOverlayWindowBlock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const-string/jumbo v5, "android:system_alert_window"

    const/4 v6, 0x4

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    const-string/jumbo v5, "NoAlertsUtil"

    const-string/jumbo v6, "MODE DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez v3, :cond_2

    const-string/jumbo v5, "NoAlertsUtil"

    const-string/jumbo v6, "MODE ALLOWED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "NoAlertsUtil"

    const-string/jumbo v6, "MODE_ERRORED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    :try_start_1
    const-string/jumbo v5, "NoAlertsUtil"

    const-string/jumbo v6, "MODE ERRORED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    :try_start_2
    const-string/jumbo v5, "NoAlertsUtil"

    const-string/jumbo v6, "MODE IGNORED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public disableNotifications()V
    .locals 4

    const-string/jumbo v2, "NoAlertsUtil"

    const-string/jumbo v3, "disableNotifications"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/app/SemStatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableNotifications()V
    .locals 4

    const-string/jumbo v2, "NoAlertsUtil"

    const-string/jumbo v3, "enableNotifications"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/SemStatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getFloatingBlockedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNoAlertsOnRuntime()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "game_no_interruption"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isNeedRefreshBlackListPolicy()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mIsNeedRefreshBlackListPolicy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z
    .locals 4

    const-string/jumbo v1, "NoAlertsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNoAlertsOnRuntime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-static {v1, v2, p2}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->hasPermissionOnPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NoAlertsUtil"

    const-string/jumbo v2, "GameMode ON, Not gameApp, has Manifest.permission.CALL_PHONE permission!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "NoAlertsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNoAlertsOnRuntime result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NoAlertsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "game No Interruption exception LIst :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getNoAlertsGameList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->disableNotifications()V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOnSystemSettings(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsGameList(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setFloatingBlockedList(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->enableNotifications()V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOnSystemSettings(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsGameList(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setFloatingBlockedList(Z)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setFloatingBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlackList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setNeedRefreshBlackListPolicy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFloatingBlockedList(Z)V
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->canOverlayWindowBlock(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    :cond_1
    const-string/jumbo v5, "NoAlertsUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setFloatingBlockedList : OVERLAY WINDOW TRUE STATUS  : pkgname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedListPrevModeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setOverlayWindowBlock(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "NoAlertsUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Over Laywindow Block Error !!! STATUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedListPrevModeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setOverlayWindowBlock(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mFloatingBlockedList:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setNeedRefreshBlackListPolicy(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mIsNeedRefreshBlackListPolicy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOverlayWindowBlock(Ljava/lang/String;I)V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "NoAlertsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOverlayWindowBlock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, p1, p2}, Landroid/app/AppOpsManager;->semSetModeSystemAlertWindow(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
