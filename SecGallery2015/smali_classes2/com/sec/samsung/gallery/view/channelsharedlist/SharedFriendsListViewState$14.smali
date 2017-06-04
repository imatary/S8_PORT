.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;
.super Ljava/lang/Object;
.source "SharedFriendsListViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showSMSMemberDialog([Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3081"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->val$data:Landroid/content/Intent;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->addSharingMember(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$2100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$14;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showNetworkErrorDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$2200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    goto :goto_0
.end method
