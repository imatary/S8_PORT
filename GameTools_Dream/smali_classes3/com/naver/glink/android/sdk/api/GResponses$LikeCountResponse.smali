.class public Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LikeCountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;
    }
.end annotation


# instance fields
.field public contentsId:Ljava/lang/String;

.field public countType:Ljava/lang/String;

.field public guestToken:Ljava/lang/String;

.field public isDisplay:Z

.field public reactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;",
            ">;"
        }
    .end annotation
.end field

.field public serviceId:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->reactions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLikeReaction()Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->reactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->reactionType:Ljava/lang/String;

    const-string/jumbo v3, "like"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;-><init>()V

    iput v4, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->count:I

    iput-boolean v4, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->isReacted:Z

    goto :goto_0
.end method

.method public isLike()Z
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->getLikeReaction()Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;

    move-result-object v0

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->isReacted:Z

    return v0
.end method
