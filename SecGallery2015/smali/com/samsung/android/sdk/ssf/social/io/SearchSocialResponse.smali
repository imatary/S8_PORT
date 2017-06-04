.class public Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "SearchSocialResponse.java"


# instance fields
.field protected article_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected article_meta_counter_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected article_meta_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected comment_meta_counter_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected comment_meta_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected count:I

.field protected display_count:I

.field protected offset:I

.field protected pages_remain:I

.field protected total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->article_list:Ljava/util/List;

    return-object v0
.end method

.method public getArticleMetaCounterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->article_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getArticleMetaDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->article_meta_data_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->comment_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommentMetaCounterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->comment_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommentMetaDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->comment_meta_data_list:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->count:I

    return v0
.end method

.method public getDisplayCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->display_count:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->offset:I

    return v0
.end method

.method public getPagesRemain()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->pages_remain:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->total:I

    return v0
.end method
