.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;
.super Ljava/lang/Object;
.source "SharedFriendsListViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->showLeaveGroupPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

.field final synthetic val$ownerLeave:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->val$ownerLeave:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->val$ownerLeave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->ownerLeaveGroup()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "3036"

    :goto_1
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$7;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->stopSharing()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$1100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "3076"

    goto :goto_1
.end method
