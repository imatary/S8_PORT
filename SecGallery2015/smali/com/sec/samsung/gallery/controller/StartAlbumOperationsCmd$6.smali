.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$000(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
