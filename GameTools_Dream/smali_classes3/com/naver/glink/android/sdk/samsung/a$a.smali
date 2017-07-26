.class Lcom/naver/glink/android/sdk/samsung/a$a;
.super Lcom/naver/glink/android/sdk/ui/articles/a;
.source "SHomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/samsung/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/samsung/a;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/samsung/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/samsung/a$a;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/ui/articles/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/samsung/b;->a(II)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;->lastArticleId:I

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/b$a;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/article/b$a;)V

    return-void
.end method
