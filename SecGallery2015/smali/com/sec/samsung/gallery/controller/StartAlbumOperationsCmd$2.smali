.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$dstAlbumPath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$operationId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$dstFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    # setter for: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSingleOperation:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$102(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$dstAlbumPath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$operationId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;->val$dstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
