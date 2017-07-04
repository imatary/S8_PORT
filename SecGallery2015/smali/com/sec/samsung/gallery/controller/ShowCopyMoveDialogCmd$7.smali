.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showCopyMoveChoiceDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

.field final synthetic val$dstAlbumPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;I)V

    goto :goto_0
.end method
