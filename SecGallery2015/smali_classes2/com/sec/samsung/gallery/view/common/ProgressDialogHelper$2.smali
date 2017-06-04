.class Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->updateProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iput p2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$progress:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$100(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$200(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a04f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$progress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressStyle:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$100(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$300(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$total:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$total:I

    # setter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mMaxCount:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$302(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;I)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$total:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    # getter for: Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$000(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$2;->val$progress:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0
.end method
