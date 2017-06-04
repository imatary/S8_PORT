.class public Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;
.super Ljava/lang/Object;
.source "CloudRefer.java"


# static fields
.field public static final CLOUD_MEDIA_TYPE_IMAGE:I = 0x1

.field public static final CLOUD_MEDIA_TYPE_VIDEO:I = 0x3

.field public static final STATUS_CACHED:I = 0x1

.field public static final STATUS_NOT_CACHED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CloudRefer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloudAlbumsSync(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer$1;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "CloudAlbumSync"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isCloudAgentExist(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.sec.android.cloudagent"

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPreloadPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "CloudRefer"

    const-string/jumbo v1, "isCloudAgentExist false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudContentSyncOn(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/cloudagent/CloudStore$API;->isCloudAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCloudSupported(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudAgentExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
