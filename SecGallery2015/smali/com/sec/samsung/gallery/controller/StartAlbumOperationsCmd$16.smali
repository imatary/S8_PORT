.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->setPrivateModeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateModeChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2202(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2102(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$800(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
