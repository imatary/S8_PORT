.class Lcom/sec/android/gallery3d/app/CropImage$3;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method

.method private deleteIfCropped()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsCropAndDelete:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2100(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x7f0a0194

    const/16 v6, 0x64

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V
    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$500(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$600(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$700(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$600(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage$3;->removeMessages(I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$800(Lcom/sec/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$600(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mUseRightAlignedActionbar:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$700(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mActionBarButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$600(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/CropImage$3;->removeMessages(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    const v2, 0x7f0a0388

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "SLinkCrop"

    const-string/jumbo v2, "CropImage : MSG_SAVE_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "src_uri"

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mSrcUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$900(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage$3;->deleteIfCropped()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "SLinkCrop"

    const-string/jumbo v2, "CropImage : MSG_SAVE_COMPLETE_SLINK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, "src_uri"

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mSrcUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$900(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage$3;->deleteIfCropped()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$1000(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$1100(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v5, v1}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$1200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->cancelTaskAndDismissProgressDialog(Lcom/sec/android/gallery3d/util/Future;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$1100(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/gallery3d/app/CropImage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v5, v1}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$300(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v2

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->dismissDialog(Landroid/app/Dialog;)V
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$400(Lcom/sec/android/gallery3d/app/CropImage;Landroid/app/Dialog;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/app/CropImage;->setResult(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$1300(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->USE_MULTIWINDOW:Z
    invoke-static {}, Lcom/sec/android/gallery3d/app/CropImage;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "CropImage"

    const-string/jumbo v2, "MSG_RESUME_PENDING : Crop activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->forceResume()V
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$1500(Lcom/sec/android/gallery3d/app/CropImage;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # setter for: Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z
    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/app/CropImage;->access$1602(Lcom/sec/android/gallery3d/app/CropImage;Z)Z

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/gallery3d/app/CropImage$3;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mUpdateBackscreenInPauseState:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$1600(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->forcePause()V
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$1700(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # setter for: Lcom/sec/android/gallery3d/app/CropImage;->mNeedUpdateBackscreenInPauseState:Z
    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/app/CropImage;->access$1802(Lcom/sec/android/gallery3d/app/CropImage;Z)Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/CropImage;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v1, v1, Lcom/sec/android/gallery3d/app/CropImage;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContentPane()Lcom/sec/android/gallery3d/ui/GLView;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->updateInPauseStateForTabletMWSwitch()V
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$1900(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$3;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # invokes: Lcom/sec/android/gallery3d/app/CropImage;->updateInPauseStateDelayed()V
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2000(Lcom/sec/android/gallery3d/app/CropImage;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x6a -> :sswitch_7
    .end sparse-switch
.end method
