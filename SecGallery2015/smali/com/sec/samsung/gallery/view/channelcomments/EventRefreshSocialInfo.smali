.class public Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;
.super Ljava/lang/Object;
.source "EventRefreshSocialInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventRefreshSocialInfo"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mArticleId:Ljava/lang/String;

.field private final mChannelId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mActivity:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mChannelId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mArticleId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mActivity:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mChannelId:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "EventRefreshSocialInfo"

    const-string/jumbo v3, "group id is not normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mActivity:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mChannelId:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->mArticleId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->refreshSocialInfo(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
