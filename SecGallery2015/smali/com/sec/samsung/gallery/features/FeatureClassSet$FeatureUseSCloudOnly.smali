.class Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSCloudOnly;
.super Lcom/sec/samsung/gallery/features/Feature;
.source "FeatureClassSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/features/FeatureClassSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureUseSCloudOnly"
.end annotation


# static fields
.field private static final CONTENT_SYNC_DATA_VERSION:I = 0x989680

.field private static final key:Ljava/lang/String; = "DisablingContentSync"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/features/Feature;-><init>()V

    return-void
.end method

.method private static getContentSyncVersion(Landroid/content/Context;)I
    .locals 7

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.scloud"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "content_sync_version"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getSupportContentSyncFloatingFeature(Landroid/content/Context;)Z
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/FloatingFeatureFactory;-><init>()V

    invoke-interface {v1, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SAMSUNGCLOUD_SUPPORT_CONTENT_SYNC"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/FloatingFeatureInterface;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private static supportSCloud(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSCloudOnly;->getSupportContentSyncFloatingFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSCloudOnly;->getContentSyncVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0x989680

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isEnabledOverVer30(Landroid/content/Context;)Z
    .locals 11

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudAgentExist(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/CscFeatureFactory;-><init>()V

    invoke-interface {v5, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;

    const-string/jumbo v7, "CscFeature_Common_ConfigSamsungCloudVariation"

    invoke-interface {v4, v7}, Lcom/sec/samsung/gallery/lib/libinterface/CscFeatureInterface;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSCloudOnly;->supportSCloud(Landroid/content/Context;)Z

    move-result v6

    goto :goto_0

    :cond_3
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v3, v2, v7

    if-eqz v3, :cond_5

    const-string/jumbo v9, "DisablingContentSync"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v9, v1

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const-string/jumbo v9, "DisablingContentSync"

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    invoke-static {p1}, Lcom/sec/samsung/gallery/features/FeatureClassSet$FeatureUseSCloudOnly;->supportSCloud(Landroid/content/Context;)Z

    move-result v6

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method isEnabledUnderVer30(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
