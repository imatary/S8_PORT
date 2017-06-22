.class Lcom/sec/android/mimage/photoretouching/service/FinishService$2;
.super Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;
.source "FinishService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/service/FinishService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;-><init>()V

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

    const-string v0, "PEDIT_FinishService"

    const-string v1, "addQuickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public hideBlurImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

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

    const-string v0, "PEDIT_FinishService"

    const-string v1, "Service get -> hideImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mHideAnimationDuration:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1202(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "PEDIT_FinishService"

    const-string v1, "blur image setBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickViewAttatched:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$000(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$402(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setBoundary(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBoundary:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$602(Lcom/sec/android/mimage/photoretouching/service/FinishService;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method

.method public showBlurImage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PEDIT_FinishService"

    const-string v1, "Service get -> showBlurImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # invokes: Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$800(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # invokes: Lcom/sec/android/mimage/photoretouching/service/FinishService;->requestFinishActivity()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$800(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$902(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$2;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
