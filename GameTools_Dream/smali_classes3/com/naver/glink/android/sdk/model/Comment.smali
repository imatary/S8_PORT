.class public Lcom/naver/glink/android/sdk/model/Comment;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Comment.java"


# static fields
.field public static final INVALID_COMMENT_ID:I = -0x1


# instance fields
.field public final articleId:I

.field public content:Ljava/lang/String;

.field public final id:I

.field public final mentionId:Ljava/lang/String;

.field public final mentionNickname:Ljava/lang/String;

.field public final refCommentId:I

.field public final targetMemberId:Ljava/lang/String;


# direct methods
.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    iput p2, p0, Lcom/naver/glink/android/sdk/model/Comment;->articleId:I

    iput p3, p0, Lcom/naver/glink/android/sdk/model/Comment;->refCommentId:I

    iput-object p4, p0, Lcom/naver/glink/android/sdk/model/Comment;->targetMemberId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    iput-object p5, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionId:Ljava/lang/String;

    iput-object p6, p0, Lcom/naver/glink/android/sdk/model/Comment;->mentionNickname:Ljava/lang/String;

    return-void
.end method

.method public static newComment(II)Lcom/naver/glink/android/sdk/model/Comment;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v3, -0x1

    move v1, p0

    move v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/naver/glink/android/sdk/model/Comment;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newComment(IIILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/model/Comment;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/naver/glink/android/sdk/model/Comment;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newComment(IIILjava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;
    .locals 7

    new-instance v0, Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v4, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/naver/glink/android/sdk/model/Comment;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isNewComment()Z
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
