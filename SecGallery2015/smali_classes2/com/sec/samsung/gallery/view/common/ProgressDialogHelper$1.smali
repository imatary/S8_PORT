.class Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog(I)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$1;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    const/4 v2, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$002(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ProgressDialogHelper"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
