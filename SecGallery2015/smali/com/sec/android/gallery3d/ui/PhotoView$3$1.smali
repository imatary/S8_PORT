.class Lcom/sec/android/gallery3d/ui/PhotoView$3$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView$3;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->isSupportUPSMImage()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a046a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v5, v5, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getAccessibilityString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mIsFromRecycleBin:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1200(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0487

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->VIDEO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v4, v4, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    instance-of v3, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    if-eqz v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "resume_position"

    check-cast v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->FLIP_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/ui/PhotoView;->setIsFlipped(Z)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1500(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mFlipScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onPhotoIconClick(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->setIsFlipped(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->makeFlippedPhotoBitmap()V
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1400(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->MOTION_PHOTO:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->getCurrentIcon()Lcom/sec/android/gallery3d/ui/playicon/IconType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/ui/playicon/IconType;->SELF_MOTION_PANORAMA:Lcom/sec/android/gallery3d/ui/playicon/IconType;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onPhotoIconClick(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPhotoIconView:Lcom/sec/android/gallery3d/ui/PhotoIconView;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoIconView;->onGenericMotionCancel()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$3$1;->this$1:Lcom/sec/android/gallery3d/ui/PhotoView$3;

    iget-object v3, v3, Lcom/sec/android/gallery3d/ui/PhotoView$3;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onPhotoIconClick(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
