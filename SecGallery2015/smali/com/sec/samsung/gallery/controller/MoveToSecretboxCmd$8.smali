.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

.field final synthetic val$itemCount:I

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;II)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->val$operationId:I

    iput p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->val$itemCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->val$operationId:I

    iget v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->val$itemCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$8;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleOnDismissDialog(IILandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILandroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
