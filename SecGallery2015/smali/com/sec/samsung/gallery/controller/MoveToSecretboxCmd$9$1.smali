.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;

.field final synthetic val$dstFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;->this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;->val$dstFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;->this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;->val$dstFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Ljava/io/File;)V

    return-void
.end method
