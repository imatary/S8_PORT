.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;
.super Ljava/lang/Object;
.source "EventUpdateStoryName.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventUpdateStoryName"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mChannelId:I

.field private final mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private final mStoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mActivity:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mStoryName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mChannelId:I

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    return-void
.end method

.method private startUpdateStoryName()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mChannelId:I

    const-string/jumbo v3, "ugci"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mActivity:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mChannelId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->mStoryName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->updateStoryName(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->startUpdateStoryName()V

    return-void
.end method
