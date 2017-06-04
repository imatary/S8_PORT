.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
.super Ljava/lang/Object;
.source "Pref.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final hexArray:[C

.field static sCtx:Landroid/content/Context;

.field private static sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;


# instance fields
.field private sCoreAppsAccessToken:Ljava/lang/String;

.field private sDeviceId:Ljava/lang/String;

.field private sDeviceImsi:Ljava/lang/String;

.field private sOnCircleAccessToken:Ljava/lang/String;

.field private sOrcaDuid:Ljava/lang/String;

.field private sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

.field private sServerOrcaProxy:Ljava/lang/String;

.field private sServerOrs:Ljava/lang/String;

.field private sServerQuota:Ljava/lang/String;

.field private sSppRegId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->hexArray:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCoreAppsAccessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOnCircleAccessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOrcaDuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrs:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrcaProxy:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerQuota:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generateTdkApiId()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnabledTdkNanoId()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    :cond_0
    move-object v1, v4

    :goto_0
    const-string/jumbo v5, "%d%d%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getDbMigrationDone()Z
    .locals 5

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "rshare_pref"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "db_migration_done"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    if-nez v4, :cond_2

    const-class v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    if-nez v4, :cond_1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string/jumbo v6, "rshare_pref"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "device_id"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    monitor-exit v5

    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "device_id"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getOrcaDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOrcaDuid:Ljava/lang/String;

    return-object v0
.end method
