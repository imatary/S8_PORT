.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;
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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$4;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$702(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    return-void
.end method
