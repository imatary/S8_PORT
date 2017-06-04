.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$600(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$7;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$900(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    return-void
.end method
