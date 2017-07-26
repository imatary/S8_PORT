.class public Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "AllMediaResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/naver/glink/android/sdk/api/response/AllMediaResponse$Metadata;

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->videos:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->photos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->items:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    sget-object v2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    sget-object v2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->PHOTO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->photos:Ljava/util/List;

    :goto_2
    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->items:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->items:Ljava/util/List;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->videos:Ljava/util/List;

    goto :goto_2
.end method
