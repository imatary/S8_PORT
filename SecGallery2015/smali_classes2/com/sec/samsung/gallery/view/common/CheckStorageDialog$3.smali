.class Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$3;
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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    # getter for: Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->USE_LOW_STORAGE_MODE:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->access$100(Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method