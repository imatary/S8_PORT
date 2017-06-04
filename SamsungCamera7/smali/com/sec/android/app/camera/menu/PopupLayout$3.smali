.class Lcom/sec/android/app/camera/menu/PopupLayout$3;
.super Ljava/lang/Object;
.source "PopupLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/PopupLayout;->showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/PopupLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$100(Lcom/sec/android/app/camera/menu/PopupLayout;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/Review;->getCaptureFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/Review;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/Review;->getCaptureFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PopupLayout"

    const-string v3, "failed to delete picture file"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/Review;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/PopupLayout;->hideReview(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$300(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$300(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->clearCaptureData()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$400(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setThumbnailUri(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PopupLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeleteClicked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShareClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->removeReviewTimeOutCallback()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$3;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    # getter for: Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->startShareViaAnimation()V

    return-void
.end method
