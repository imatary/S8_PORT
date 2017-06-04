.class Lcom/sec/android/gallery3d/app/CropImage$14;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->saveCropImageFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/CropImage;->mSaveTask:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$3102(Lcom/sec/android/gallery3d/app/CropImage;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->lookUpKeyAfterRecreate:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$3200(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "lookupKey"

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->lookUpKeyAfterRecreate:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$3200(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsManualFD:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$3400(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsSlinkCrop:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$3500(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    :goto_2
    invoke-virtual {v3, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    const-string/jumbo v2, "CROP"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "lookupKey"

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->lookupkeytoPass:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/CropImage;->access$3300(Lcom/sec/android/gallery3d/app/CropImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/CropImage$14;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
