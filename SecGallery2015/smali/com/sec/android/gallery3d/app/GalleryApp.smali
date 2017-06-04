.class public interface abstract Lcom/sec/android/gallery3d/app/GalleryApp;
.super Ljava/lang/Object;
.source "GalleryApp.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;


# virtual methods
.method public abstract getAppIntent()Landroid/content/Intent;
.end method

.method public abstract getCurrentClusterType()I
.end method

.method public abstract getDataManager()Lcom/sec/android/gallery3d/data/DataManager;
.end method

.method public abstract getDownloadCache()Lcom/sec/android/gallery3d/data/DownloadCache;
.end method

.method public abstract getQuickViewService()Lcom/sec/android/gallery3d/service/IQuickViewService;
.end method

.method public abstract getRefreshOperation()I
.end method

.method public abstract getRestartSmartClustering()Z
.end method

.method public abstract getSortByType()I
.end method

.method public abstract getStopSmartClustering()Z
.end method

.method public abstract getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
.end method

.method public abstract isActivityRecreated()Z
.end method

.method public abstract isArcMode()Z
.end method

.method public abstract isFestivalMode()Z
.end method

.method public abstract isPhotoPage()Z
.end method

.method public abstract isSlideShowMode()Z
.end method

.method public abstract setActivityRecreated(Z)V
.end method

.method public abstract setAppIntent(Landroid/content/Intent;)V
.end method

.method public abstract setCurrentClusterType(I)V
.end method

.method public abstract setIsPhotoPage(Z)V
.end method

.method public abstract setRefreshOperation(I)V
.end method

.method public abstract setRestartSmartClustering(Z)V
.end method

.method public abstract setSlideShowMode(Z)V
.end method

.method public abstract setSortByType(I)V
.end method

.method public abstract setStopSmartClustering(Z)V
.end method

.method public abstract unbindQuickViewService()V
.end method
