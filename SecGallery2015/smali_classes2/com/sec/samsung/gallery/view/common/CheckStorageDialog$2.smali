.class Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;
.super Ljava/lang/Object;
.source "CheckStorageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->setStorageDialog(Landroid/app/AlertDialog$Builder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

.field final synthetic val$isCallSmartManager:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->val$isCallSmartManager:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->val$isCallSmartManager:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->access$200(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->access$100(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->access$300(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V

    goto :goto_0
.end method
