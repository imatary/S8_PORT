.class public Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;
.super Ljava/lang/Object;
.source "RefreshSocialInfoCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshSocialCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private updateAllSocialInfo()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllArticleInfo(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "RefreshSocialCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SOCIAL_STORY : updateAllSocialInfo() - articleId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "SHARE_EVENT_ITEM_ID"

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "article_id"

    invoke-static {v6, v7, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->excute()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public excute()V
    .locals 5

    const-string/jumbo v1, "RefreshSocialCommand"

    const/4 v2, 0x2

    const-string/jumbo v3, "excute"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RefreshSocialCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SOCIAL_STORY : excute() - articleId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ITEM_ID"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "article_id"

    invoke-static {v3, v4, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getCMHFileId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/RefreshSocialInfoCommand;->updateAllSocialInfo()V

    goto :goto_0
.end method
