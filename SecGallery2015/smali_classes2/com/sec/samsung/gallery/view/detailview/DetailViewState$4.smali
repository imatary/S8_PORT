.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBrokenImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBrokenImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBrokenImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/Model;->updateBrokenImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public deletePhoto()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$4;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    return-void
.end method
