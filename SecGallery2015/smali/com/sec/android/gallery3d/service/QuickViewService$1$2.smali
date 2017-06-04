.class Lcom/sec/android/gallery3d/service/QuickViewService$1$2;
.super Ljava/lang/Object;
.source "QuickViewService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/service/QuickViewService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/service/QuickViewService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_HIDE_VIEW onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mNeedHideView:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$702(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mIsHideAnimationState:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1302(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "QuickViewService"

    const-string/jumbo v3, "MSG_HIDE_VIEW onAnimation End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$402(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mNeedHideView:Z
    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$702(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v2, v2, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mIsHideAnimationState:Z
    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1302(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "MSG_HIDE_VIEW onAnimation Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$1$2;->this$1:Lcom/sec/android/gallery3d/service/QuickViewService$1;

    iget-object v0, v0, Lcom/sec/android/gallery3d/service/QuickViewService$1;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mIsHideAnimationState:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1302(Lcom/sec/android/gallery3d/service/QuickViewService;Z)Z

    return-void
.end method
