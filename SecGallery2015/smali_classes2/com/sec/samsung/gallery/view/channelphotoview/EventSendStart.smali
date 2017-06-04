.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;
.super Ljava/lang/Object;
.source "EventSendStart.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventSendStart"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mChanneId:I

.field private final mEventname:Ljava/lang/String;

.field private final mLocalPathFileContent:[Ljava/lang/String;

.field private final mSelectedcontact:[Landroid/net/Uri;

.field private final mUrifilecontent:[Landroid/net/Uri;

.field private final mUseMobileData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/net/Uri;[Landroid/net/Uri;Ljava/lang/String;I[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mActivity:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUrifilecontent:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mSelectedcontact:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mEventname:Ljava/lang/String;

    iput p5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mChanneId:I

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mLocalPathFileContent:[Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUseMobileData:Z

    return-void
.end method

.method private startCreateGroup()V
    .locals 10

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mChanneId:I

    const-string/jumbo v3, "ugci"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    const-string/jumbo v1, "EventSendStart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCreateGroup : channelID [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mChanneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ugci [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mSelectedcontact:[Landroid/net/Uri;

    array-length v1, v1

    if-ge v8, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mSelectedcontact:[Landroid/net/Uri;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mChanneId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mEventname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->addMember(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mSelectedcontact:[Landroid/net/Uri;

    array-length v1, v1

    if-ge v8, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mSelectedcontact:[Landroid/net/Uri;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUrifilecontent:[Landroid/net/Uri;

    array-length v1, v1

    if-ge v8, v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUrifilecontent:[Landroid/net/Uri;

    aget-object v1, v1, v8

    if-nez v1, :cond_3

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUrifilecontent:[Landroid/net/Uri;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mLocalPathFileContent:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v6, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mChanneId:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mEventname:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->mUseMobileData:Z

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSendingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->startCreateGroup()V

    return-void
.end method
