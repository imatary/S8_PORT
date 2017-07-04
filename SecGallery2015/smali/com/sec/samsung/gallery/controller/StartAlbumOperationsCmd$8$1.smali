.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;

.field final synthetic val$dstFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;->val$dstFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;->val$dstFile:Ljava/io/File;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;

    iget v2, v2, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/io/File;I)V

    return-void
.end method
