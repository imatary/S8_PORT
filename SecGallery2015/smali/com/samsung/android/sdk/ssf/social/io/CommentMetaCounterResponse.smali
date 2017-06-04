.class public Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "CommentMetaCounterResponse.java"


# instance fields
.field protected comment_id:Ljava/lang/String;

.field protected created_at:Ljava/lang/Long;

.field protected meta_key:Ljava/lang/String;

.field protected only_once:Z

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->value:I

    return v0
.end method

.method public isOnlyOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->only_once:Z

    return v0
.end method
