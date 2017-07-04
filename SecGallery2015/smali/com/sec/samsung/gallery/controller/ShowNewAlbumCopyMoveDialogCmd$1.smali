.class Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;
.super Ljava/lang/Object;
.source "ShowNewAlbumCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$002(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    return-void

    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_NEW_ALBUM_MODE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
