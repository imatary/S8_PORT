.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

.field final synthetic val$spreadBurstShot:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->val$spreadBurstShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public makeHandler()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
