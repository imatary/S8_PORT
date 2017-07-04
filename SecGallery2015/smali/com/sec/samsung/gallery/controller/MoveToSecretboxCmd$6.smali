.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/16 v2, 0x6f

    if-ne p2, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$702(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
