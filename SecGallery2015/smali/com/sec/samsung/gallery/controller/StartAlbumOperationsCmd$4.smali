.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;
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

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$dstAlbumPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$dstFile:Ljava/io/File;

    iput p5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$operationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$102(Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$402(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$dstAlbumPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$dstFile:Ljava/io/File;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;->val$operationId:I

    invoke-static {v1, v2, v0, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$500(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/io/File;Ljava/io/File;I)V

    return-void
.end method
