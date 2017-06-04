.class Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;
.super Ljava/lang/Object;
.source "UpdateSocialInfoCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSocialInfoCommand"


# instance fields
.field private final mArticleId:Ljava/lang/String;

.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ARTICLE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mArticleId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mArticleId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "UpdateSocialInfoCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SOCIAL_STORY : excute() action - mArticleId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mArticleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v2, v3, v1}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;->excute()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mIntent:Landroid/content/Intent;

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UpdateSocialInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;->excute()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "UpdateSocialInfoCommand"

    const-string/jumbo v3, "SOCIAL_STORY : excute() but mArticleId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
