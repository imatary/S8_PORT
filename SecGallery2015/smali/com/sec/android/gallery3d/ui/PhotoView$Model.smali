.class public interface abstract Lcom/sec/android/gallery3d/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# static fields
.field public static final LOADING_COMPLETE:I = 0x1

.field public static final LOADING_FAIL:I = 0x2

.field public static final LOADING_INIT:I


# virtual methods
.method public abstract getCameraRotation()I
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getImageRotation()I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
.end method

.method public abstract getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isStaticCamera(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract moveToFastest(I)V
.end method

.method public abstract requestBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end method

.method public abstract setFlippedScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
.end method

.method public abstract useLoadingProgress(I)Z
.end method
