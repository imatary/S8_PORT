.class public Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "ArticleMetaDataResponse.java"


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected created_at:Ljava/lang/Long;

.field protected meta_key:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->value:Ljava/lang/String;

    return-object v0
.end method
