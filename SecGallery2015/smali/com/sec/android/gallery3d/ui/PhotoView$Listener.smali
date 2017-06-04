.class public interface abstract Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
.end method

.method public abstract interfaceonAgifPlayRequests()V
.end method

.method public abstract isFastOptionViewShowing()Z
.end method

.method public abstract isLongPressFinished()Z
.end method

.method public abstract isMoreInfoOn()Z
.end method

.method public abstract onActionBarAllowed(Z)V
.end method

.method public abstract onActionBarWanted()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage()V
.end method

.method public abstract onDeviceToTVIconClick()V
.end method

.method public abstract onDown()V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onPhotoIconClick(Landroid/os/Bundle;)V
.end method

.method public abstract onPictureCenter(Z)V
.end method

.method public abstract onScaleMin()Z
.end method

.method public abstract onSingleTapUp()V
.end method

.method public abstract onSizeChanged()V
.end method

.method public abstract onStartCameraVIEffect()V
.end method

.method public abstract onStartTransitionEffect()V
.end method

.method public abstract onVisionIntelligenceIconClick(ZLandroid/graphics/RectF;Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/graphics/RectF;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation
.end method
