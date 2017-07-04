.class Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;
.super Landroid/os/Handler;
.source "StartAlbumChoiceActivityCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->access$400(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->access$400(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->access$500(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v7

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
