.class public Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;
.super Lcom/naver/glink/android/sdk/api/Response;
.source "GResponses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/GResponses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleResponse"
.end annotation


# instance fields
.field public articleId:I

.field public cafeMemberLevel:I

.field public channelId:I

.field public commentAuthDesc:Ljava/lang/String;

.field public contents:Ljava/lang/String;

.field private formattedWriteDateTime:Ljava/lang/String;

.field public isCommentWritable:Z

.field public isLikeable:Z

.field public isWriter:Z

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation
.end field

.field public likeAuthDesc:Ljava/lang/String;

.field public menuId:I

.field public menuName:Ljava/lang/String;

.field public readCount:I

.field public subject:Ljava/lang/String;

.field public writeDateTime:Ljava/lang/String;

.field public writerId:Ljava/lang/String;

.field public writerMemberLevel:I

.field public writerMemberTypeName:Ljava/lang/String;

.field public writerNickname:Ljava/lang/String;

.field public writerProfileImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedWriteDateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->formattedWriteDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->writeDateTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->formattedWriteDateTime:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->formattedWriteDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Content;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->items:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->contents:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/model/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->items:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->items:Ljava/util/List;

    return-object v0
.end method
