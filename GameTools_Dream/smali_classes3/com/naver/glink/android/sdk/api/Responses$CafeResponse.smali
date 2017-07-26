.class public Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CafeResponse"
.end annotation


# instance fields
.field public backgroundImageUrl:Ljava/lang/String;

.field public cafeId:I

.field public cafeName:Ljava/lang/String;

.field public cafeUrl:Ljava/lang/String;

.field public channelId:I

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$Channel;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public eventMenuId:I

.field public fullCoverImageUrl:Ljava/lang/String;

.field public hasNewEventArticle:Z

.field public hasNewNoticeArticle:Z

.field public iconImageUrl:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public memberCount:I

.field public noticeMenuId:I

.field public topCoverImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->noticeMenuId:I

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->eventMenuId:I

    iput v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channelId:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/naver/glink/android/sdk/api/Responses$Channel;
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channelId:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannelByChannelId(I)Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    return-object v0
.end method

.method public getChannelByChannelCode(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/Responses$Channel;
    .locals 3

    if-nez p1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channelId:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannelByChannelId(I)Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannelByChannelId(I)Lcom/naver/glink/android/sdk/api/Responses$Channel;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;

    iget v3, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->channelId:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getChannels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$Channel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channels:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;

    const-string/jumbo v3, "ko"

    iget-object v4, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
