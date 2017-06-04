.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showRenameDialog(Ljava/io/File;Ljava/io/File;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

.field final synthetic val$extention:Ljava/lang/String;

.field final synthetic val$operationId:I

.field final synthetic val$spreadBurstShot:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$extention:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$operationId:I

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$spreadBurstShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x1

    move-object v7, p2

    check-cast v7, Lcom/sec/samsung/gallery/core/Event;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$extention:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$operationId:I

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$10;->val$spreadBurstShot:Z

    move v3, v2

    # invokes: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method
