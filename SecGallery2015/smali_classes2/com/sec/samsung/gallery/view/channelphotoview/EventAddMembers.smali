.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;
.super Ljava/lang/Object;
.source "EventAddMembers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAddMembers"


# instance fields
.field private final eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private final mActivity:Landroid/content/Context;

.field private final mChanneId:I

.field private final mEventname:Ljava/lang/String;

.field private final mSelectedcontact:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mActivity:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mSelectedcontact:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mEventname:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mChanneId:I

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    return-void
.end method

.method private startAddGroup()V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mActivity:Landroid/content/Context;

    iget v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mChanneId:I

    const-string/jumbo v5, "ugci"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mSelectedcontact:[Landroid/net/Uri;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mSelectedcontact:[Landroid/net/Uri;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mActivity:Landroid/content/Context;

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mChanneId:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->mEventname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->addMember(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->startAddGroup()V

    return-void
.end method
