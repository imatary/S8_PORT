.class Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;
.super Landroid/os/Handler;
.source "ChangePlayerListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "ChangePlayerListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScanDlnaOnlyDisplayHandler : SCAN_DLNA_DISPLAY_START or AUTO_SCAN_START , type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->removeMessages(I)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$300(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "mScanDlnaOnlyDisplayHandler : SCAN_DLNA_DISPLAY_FINISH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$300(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;->this$0:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
