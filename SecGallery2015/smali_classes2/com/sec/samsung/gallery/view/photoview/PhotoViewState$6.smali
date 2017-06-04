.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->addGLIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateOptionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIgnoreInvalidateOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1302(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Z)Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;->setBeamListener()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;->updateOptionMenu()V

    goto :goto_0
.end method
