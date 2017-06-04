.class public Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "ArticleInfoResponse.java"


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected article_id:Ljava/lang/String;

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

.field protected comment_count:I

.field protected created_at:Ljava/lang/Long;

.field protected description:Ljava/lang/String;

.field protected group_id:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected owner_id:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Ljava/lang/Boolean;

.field protected sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->article_id:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->article_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->comment_count:I

    return v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->sid:I

    return v0
.end method
