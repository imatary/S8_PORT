.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showDialog(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$object:Lcom/sec/android/gallery3d/data/MediaObject;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Landroid/widget/CheckBox;ILcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$checkBox:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$operationId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$object:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1302(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1402(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$operationId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$operationId:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$object:Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$dstAlbumPath:Ljava/lang/String;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$object:Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;->val$dstAlbumPath:Ljava/lang/String;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    goto :goto_0
.end method
