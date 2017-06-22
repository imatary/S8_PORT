.class Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;
.super Landroid/os/Handler;
.source "ChangePlayerListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->removeMessages(I)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$300(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$300(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;->access$200(Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
