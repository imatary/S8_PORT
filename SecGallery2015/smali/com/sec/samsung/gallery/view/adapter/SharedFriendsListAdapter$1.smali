.class Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;
.super Ljava/lang/Object;
.source "SharedFriendsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->val$position:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v2, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->access$200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
