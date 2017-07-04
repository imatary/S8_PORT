.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$operationId:I

.field final synthetic val$spreadBurstShot:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/io/File;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$dstFile:Ljava/io/File;

    iput p4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$operationId:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$spreadBurstShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/FileUtil;->getDstFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$dstFile:Ljava/io/File;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$operationId:I

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$5;->val$spreadBurstShot:Z

    invoke-static {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$800(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/io/File;Ljava/io/File;IZ)V

    return-void
.end method
