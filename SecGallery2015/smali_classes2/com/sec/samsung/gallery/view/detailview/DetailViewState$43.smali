.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->handleImageRotation(ILcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$rotateAngle:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v13, 0x5a

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->updateItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v10

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v11

    iget v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    if-ne v7, v13, :cond_8

    move v7, v8

    :goto_0
    invoke-virtual {v10, v11, v7}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->prepareAnimation(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullViewNoAnimation()V

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/PhotoView;->setIsRotated(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v10, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v7, v7, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v7, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/LocalImage;->setRotateForSearch(Z)V

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x10

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "SoundShot_000"

    invoke-static {v3, v7}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteAllData(Ljava/io/File;)Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    iget v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/gallery3d/data/DataManager;->rotate(Lcom/sec/android/gallery3d/data/Path;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSupportExitQuickViewWithFlick:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setCameraRotation(I)V
    invoke-static {v7, v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    :cond_3
    const-string/jumbo v7, "SoundShot_000"

    const/16 v10, 0x800

    sget v11, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v3, v7, v6, v10, v11}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->imageSlideDirection:I
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v12

    invoke-virtual {v1, v7, v10, v11, v12}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->playImageContinuously(ILcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;I)V

    :cond_4
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->isAnimating()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->startAnimation()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    iget v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    if-ne v7, v13, :cond_c

    const v7, 0x7f0a0547

    :goto_3
    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v7, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    const-string/jumbo v10, "Rotate"

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v7, v10, v11, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->requestScanFile(Landroid/content/Context;[Ljava/lang/String;)V

    return-void

    :cond_8
    move v7, v9

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v7, v7, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v7, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setRotateForSearch(Z)V

    goto/16 :goto_1

    :cond_a
    :try_start_1
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mLockForAutoAdjust:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31300()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    invoke-virtual {v7, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->rotate(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSupportExitQuickViewWithFlick:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$43;->val$rotateAngle:I

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setCameraRotation(I)V
    invoke-static {v7, v11}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    :cond_b
    monitor-exit v10

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "DetailViewState"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f0a0546

    goto :goto_3
.end method
