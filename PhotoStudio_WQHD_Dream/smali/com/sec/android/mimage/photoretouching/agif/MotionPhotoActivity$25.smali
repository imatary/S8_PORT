.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->dismissDialogAndUpdateLayout(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;->destroy()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->getCurrentIndex()I

    move-result v3

    sub-int v6, v5, v3

    add-int/lit8 v1, v6, -0x1

    move v4, v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v5

    :goto_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addThumbnailView(ILandroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addThumbnailView(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->countImageAdd:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->updateThumbnailButton(II)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFaceRects()V
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v7, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v7, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;->execute(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAdapter(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v7, v7, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentAspectRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    invoke-virtual {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->setAspectRatio(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->play()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsPlayFirst:Z
    invoke-static {v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3802(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    :cond_4
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v6, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$25;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateButtonState()V
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    return-void
.end method
