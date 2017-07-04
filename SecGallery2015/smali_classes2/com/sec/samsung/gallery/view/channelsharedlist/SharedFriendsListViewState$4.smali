.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;
.super Ljava/lang/Object;
.source "SharedFriendsListViewState.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->initListenersForContactListView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$900(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1, p3}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)V

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1, p2, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$800(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$902(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;Z)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState$4;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;->access$700(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    goto :goto_1
.end method
