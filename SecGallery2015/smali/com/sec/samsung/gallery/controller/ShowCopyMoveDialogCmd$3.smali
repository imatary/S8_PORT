.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$dstAlbumPath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$operationId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$dstFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$202(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$dstAlbumPath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$operationId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;->val$dstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
