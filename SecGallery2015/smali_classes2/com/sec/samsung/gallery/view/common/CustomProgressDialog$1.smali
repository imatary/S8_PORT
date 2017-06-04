.class Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$000(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->mListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->access$000(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
