.class public Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;
.super Ljava/lang/Object;
.source "ChannelItemSocialInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo$SOCIAL_TYPE;
    }
.end annotation


# instance fields
.field private mArticleId:Ljava/lang/String;

.field private mCommentCount:I

.field private mCommitStatus:I

.field private mIsLikeByMe:I

.field private mLatestCommentText:Ljava/lang/String;

.field private mLatestCommentUser:Ljava/lang/String;

.field private mLikeCount:I

.field private mOwnerInfo:Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

.field private mSocialType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mOwnerInfo:Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mArticleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommentCount:I

    return v0
.end method

.method public getCommitStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommitStatus:I

    return v0
.end method

.method public getLatestCommentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLatestCommentText:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestCommentUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLatestCommentUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeByMe()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommitStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mIsLikeByMe:I

    goto :goto_0
.end method

.method public getLikeCount()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommitStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLikeCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLikeCount:I

    goto :goto_0
.end method

.method public getOwnerInfo()Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mOwnerInfo:Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    return-object v0
.end method

.method public getSocialType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mSocialType:I

    return v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mArticleId:Ljava/lang/String;

    return-void
.end method

.method setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommentCount:I

    return-void
.end method

.method public setCommitStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mCommitStatus:I

    return-void
.end method

.method setLatestCommentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLatestCommentText:Ljava/lang/String;

    return-void
.end method

.method setLatestCommentUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLatestCommentUser:Ljava/lang/String;

    return-void
.end method

.method setLikeByMe(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mIsLikeByMe:I

    return-void
.end method

.method setLikeCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mLikeCount:I

    return-void
.end method

.method setOwnerInfo(Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mOwnerInfo:Lcom/sec/android/gallery3d/data/ChannelItemOwnerInfo;

    return-void
.end method

.method setSocialType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;->mSocialType:I

    return-void
.end method
