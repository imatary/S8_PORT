.class public Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;
.super Ljava/lang/Object;
.source "ArticleDetails.java"


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected created_at:J

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->created_at:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->name:Ljava/lang/String;

    return-object v0
.end method
