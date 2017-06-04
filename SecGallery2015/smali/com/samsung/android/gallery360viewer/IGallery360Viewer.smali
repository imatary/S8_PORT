.class public interface abstract Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
.super Ljava/lang/Object;
.source "IGallery360Viewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;,
        Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;,
        Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;
    }
.end annotation


# virtual methods
.method public abstract getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract resetView(I)V
.end method

.method public abstract save(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setErrorListener(Ljava/util/concurrent/Callable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInputImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract startAutoRotation()V
.end method

.method public abstract stopAutoRotation()V
.end method
