.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SharedFriendsListViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStateReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadStateReceiver"


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mChannelID:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)I

    move-result v2

    const-string/jumbo v4, "SHARE_EVENT_ID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v2, v5, :cond_0

    if-ne v1, v5, :cond_2

    :cond_0
    const-string/jumbo v4, "DownloadStateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The local event id("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") or event id("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") of intent is not valid!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v2, v1, :cond_3

    const-string/jumbo v4, "DownloadStateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The event id("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is not the same as that("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") of intent!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "RESPONSE_DATA"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_COMPLETE_DELETE_MEMBER"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->refreshListView()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_ADD_MEMBER"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->refresh()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_DELETE_GROUP_MEMBER_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_4
    const-string/jumbo v4, "SHARE_EVENT_UPLOAD_ERROR_FROM"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mErrorDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    sget-object v4, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showErrorDialog()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_PUSH_RECEIVER_DELETE_GROUP"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->onBackPressed()V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_SEND_LINK_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SHARE_EVENT_UPLOAD_ERROR_FROM"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;->NETWORK:Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showErrorDialog()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v4, "DownloadStateReceiver"

    const-string/jumbo v5, "DownloadStateReceiver : SHARE_EVENT_RESPONSE_COMPLETE_SEND_LINK"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const v5, 0x7f0a0244

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$DownloadStateReceiver;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mShareListAdapter:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x8 -> :sswitch_1
        0xe -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
.end method
