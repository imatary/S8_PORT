.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;
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

.field final synthetic val$count:I

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$operationId:I

.field final synthetic val$spreadBurstShot:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILjava/io/File;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$operationId:I

    iput p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$count:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$dstFile:Ljava/io/File;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$spreadBurstShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$operationId:I

    iget v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$count:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$dstFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$3;->val$spreadBurstShot:Z

    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method
