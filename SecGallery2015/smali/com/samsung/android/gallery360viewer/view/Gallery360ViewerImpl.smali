.class public Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;
.super Ljava/lang/Object;
.source "Gallery360ViewerImpl.java"

# interfaces
.implements Lcom/samsung/android/gallery360viewer/IGallery360Viewer;


# instance fields
.field private mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-direct {v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->onResume()V

    return-void
.end method

.method public resetView(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->resetView(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;)V

    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->captureScreen(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setErrorListener(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setErrorListener(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->init(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    return-void
.end method

.method public startAutoRotation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->startAutoRotation()V

    return-void
.end method

.method public stopAutoRotation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/Gallery360ViewerImpl;->mView:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->stopAutoRotation()V

    return-void
.end method
