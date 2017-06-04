.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$PrivateModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->setPrivateModeChangeListener()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$16;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2502(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
