.class public Lcom/sec/samsung/gallery/view/channelcomments/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field private mCommentId:Ljava/lang/String;

.field private mCommentText:Ljava/lang/String;

.field private final mCommitStatus:I

.field private mFileId:I

.field private mIsLiked:I

.field private mPhoneNumber:Ljava/lang/String;

.field private final mSocialType:I

.field private mStoryId:I

.field private mTimeStamp:J

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;JII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mStoryId:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mFileId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mPhoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mUserName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mTimeStamp:J

    iput p7, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mSocialType:I

    iput p8, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommitStatus:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mStoryId:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mFileId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mPhoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mUserName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mTimeStamp:J

    iput p7, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mSocialType:I

    iput p8, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommitStatus:I

    iput-object p9, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommentText:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method getCommentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommentText:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mFileId:I

    return v0
.end method

.method public getIsLiked()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mIsLiked:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method getSocialType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mSocialType:I

    return v0
.end method

.method public getStoryId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mStoryId:I

    return v0
.end method

.method getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mTimeStamp:J

    return-wide v0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method setCommentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommentText:Ljava/lang/String;

    return-void
.end method

.method public setFileId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mFileId:I

    return-void
.end method

.method public setIsLiked(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mIsLiked:I

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setStoryId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mStoryId:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mTimeStamp:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mUserName:Ljava/lang/String;

    return-void
.end method

.method uploadFailed()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommitStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method uploadInProgress()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/Comment;->mCommitStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
