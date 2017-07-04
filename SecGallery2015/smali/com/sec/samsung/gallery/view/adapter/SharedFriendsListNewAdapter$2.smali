.class Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;
.super Ljava/lang/Object;
.source "SharedFriendsListNewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setAdapterView(Ljava/lang/Integer;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->val$position:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "3068"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->val$position:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v2, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNormalizedNumberByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
