.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonComment"
.end annotation


# static fields
.field public static final INVALID_CAFE_MEMBER_LEVEL:I = -0x1


# instance fields
.field public commentNo:I

.field private contents:Ljava/lang/String;

.field public deleted:Z

.field public extension:Ljava/lang/String;

.field public formattedDate:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public manager:Z

.field public mentions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mine:Z

.field public open:Z

.field public parentCommentNo:I

.field public regTimeGmt:Ljava/lang/String;

.field public replyCount:I

.field public replyLevel:I

.field private replyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field private unescapeContents:Ljava/lang/String;

.field public userIdNo:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userProfileImage:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCafeMemberLevel()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->extension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->extension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Extension;->cafeMemberLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->unescapeContents:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->contents:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->unescapeContents:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->unescapeContents:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsForEditing()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getContents()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public getFormattedDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->formattedDate:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->regTimeGmt:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->formattedDate:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->formattedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRepliesPage()I
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyCount:I

    div-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyCount:I

    rem-int/lit8 v1, v1, 0x14

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getMentionId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->hasMention()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMentionNickname()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->hasMention()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getMentionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReplies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyList:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasMention()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mentions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isReply()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReply()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->replyLevel:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
