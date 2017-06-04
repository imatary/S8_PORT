.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsTouchOutside:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$602(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1802(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$11;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2402(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    return-void
.end method
