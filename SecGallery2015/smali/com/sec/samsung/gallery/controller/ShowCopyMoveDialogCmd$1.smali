.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showRenameDialog(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$extention:Ljava/lang/String;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$extention:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$dstFile:Ljava/io/File;

    iput p4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$operationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$extention:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$dstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;->val$operationId:I

    const/4 v5, 0x1

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
