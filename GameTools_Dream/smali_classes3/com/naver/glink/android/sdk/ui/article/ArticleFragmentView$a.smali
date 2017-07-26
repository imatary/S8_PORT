.class public Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->contentsId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a:I

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->getLikeReaction()Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->count:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->b:I

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->getLikeReaction()Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;

    move-result-object v0

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse$Reaction;->isReacted:Z

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;->contentsId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a:I

    iget v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;->count:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->b:I

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;->isReacted:Z

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->c:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "_"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
