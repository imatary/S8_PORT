.class public Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;
.super Ljava/lang/Object;
.source "CheckNeedToUpdateApk.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckNeedToUpdateApk"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addUiUpdateListener()V
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk$1;-><init>(Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->setUiUpdateListener(Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;ZZLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkAvailablityOfUpdate()V
    .locals 8

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "key_recent_app_update_check_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckNeedToUpdateApk;->addUiUpdateListener()V

    :cond_0
    return-void
.end method
