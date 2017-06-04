.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;
.super Ljava/lang/Object;
.source "EventUpdateStoryCover.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventUpdateStoryCover"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mChannelId:I

.field private final mCoverPath:Ljava/lang/String;

.field private final mCoverRatio:Landroid/graphics/RectF;

.field private final mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/RectF;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mActivity:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mChannelId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mCoverPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mCoverRatio:Landroid/graphics/RectF;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    return-void
.end method

.method private startUpdateStoryCover()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mActivity:Landroid/content/Context;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mChannelId:I

    const-string/jumbo v2, "ugci"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mEventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mChannelId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mCoverPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->mCoverRatio:Landroid/graphics/RectF;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->updateStoryCover(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->startUpdateStoryCover()V

    return-void
.end method
