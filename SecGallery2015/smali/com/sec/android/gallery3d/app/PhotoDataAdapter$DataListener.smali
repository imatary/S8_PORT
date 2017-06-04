.class public interface abstract Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onChangeCurrentIndex()V
.end method

.method public abstract onFilmIndexChanged(I)V
.end method

.method public abstract onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end method

.method public abstract onPhotoAvailable(Lcom/sec/android/gallery3d/data/Path;Z)V
.end method

.method public abstract onPhotoChanged(ILcom/sec/android/gallery3d/data/Path;)V
.end method

.method public abstract onPhotoFailedToLoad()V
.end method
