.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;
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


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$8;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->mIsMaster:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$400(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "3035"

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const-string/jumbo v0, "3075"

    goto :goto_0
.end method
