.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;
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

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/io/File;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->val$dstFile:Ljava/io/File;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->val$operationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$202(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->val$dstFile:Ljava/io/File;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;->val$operationId:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/io/File;I)V

    return-void
.end method
