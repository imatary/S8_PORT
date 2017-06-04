.class Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "GalleryActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryActivityLCB"


# instance fields
.field private mActivityCount:I

.field private final mAppContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    const-string/jumbo v0, "GalleryActivityLCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "created : count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->cloudAlbumsSyncPause(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    const-string/jumbo v0, "GalleryActivityLCB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyed : count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mActivityCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mAppContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->stopNearbyFramework(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->deletePreviousCaches(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->cloudAlbumsSyncPause(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
