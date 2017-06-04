.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverDown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$2;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCoverUp()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8$1;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
