.class Lcom/sec/android/gallery3d/service/QuickViewService$2;
.super Lcom/sec/android/gallery3d/service/IQuickViewService$Stub;
.source "QuickViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/service/QuickViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/service/QuickViewService;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/service/QuickViewService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/service/IQuickViewService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addQuickView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "addQuickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is attatched already!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hideBlurImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mBlurBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hideImage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "Service get -> hideImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mBlurBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mHideAnimationDuration:I
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$1202(Lcom/sec/android/gallery3d/service/QuickViewService;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "blur image setBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$000(Lcom/sec/android/gallery3d/service/QuickViewService;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "QuickView is not attached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$402(Lcom/sec/android/gallery3d/service/QuickViewService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public showBlurImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "Service get -> showBlurImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mBlurBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public showBlurImageWithAnimation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$100(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mQuickView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$300(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$400(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "QuickViewService"

    const-string/jumbo v1, "mBlurBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # setter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mAnimationDuration:I
    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$902(Lcom/sec/android/gallery3d/service/QuickViewService;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/service/QuickViewService$2;->this$0:Lcom/sec/android/gallery3d/service/QuickViewService;

    # getter for: Lcom/sec/android/gallery3d/service/QuickViewService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/service/QuickViewService;->access$800(Lcom/sec/android/gallery3d/service/QuickViewService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
