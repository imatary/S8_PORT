.class Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;
.super Landroid/os/Handler;
.source "SelectionUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    # getter for: Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->access$300(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceSelectionDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    # getter for: Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->access$200(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0340

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
