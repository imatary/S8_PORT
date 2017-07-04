.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showDialog(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$600(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$702(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1902(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$15;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
