.class Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;
.super Ljava/lang/Object;
.source "GetCommentInfoCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommentlInfo"
.end annotation


# instance fields
.field private final mCommentId:Ljava/lang/String;

.field private final mCommitStatus:I

.field private final mTimeStamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mCommentId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mTimeStamp:J

    iput p4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mCommitStatus:I

    return-void
.end method


# virtual methods
.method getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public uploadInProgress()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand$CommentlInfo;->mCommitStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
