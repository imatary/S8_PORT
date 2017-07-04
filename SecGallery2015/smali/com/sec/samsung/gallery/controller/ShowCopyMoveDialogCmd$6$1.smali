.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$object:Lcom/sec/android/gallery3d/data/MediaObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->val$object:Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->val$dstFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->val$object:Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->val$dstFile:Ljava/io/File;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

    iget-object v3, v3, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;->this$1:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

    iget v4, v4, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1700(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method
