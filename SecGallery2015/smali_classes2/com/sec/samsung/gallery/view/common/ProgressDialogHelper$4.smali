.class Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$4;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
