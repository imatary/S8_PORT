.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;
.super Landroid/os/Handler;
.source "PhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, -0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->checkAlbumState(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateAlbumNameOfActionBar()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarMenuColor()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateCloudAlbumNameOfActionBar()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
