.class public Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;
.super Ljava/lang/Object;
.source "EventAddLike.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAddLike"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mArticleId:Ljava/lang/String;

.field private final mChannelId:I

.field private final mFileId:I

.field private final mUniquePath:Ljava/lang/String;

.field private final mUseMobileData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mActivity:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mChannelId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mFileId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mArticleId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mUniquePath:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mUseMobileData:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mChannelId:I

    const-string/jumbo v3, "ugci"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "EventAddLike"

    const-string/jumbo v2, "group id is not normal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mChannelId:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mFileId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mArticleId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mUniquePath:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->mUseMobileData:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->addLike(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
