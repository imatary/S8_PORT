.class Lcom/naver/glink/android/sdk/ui/articles/a$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticlesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/articles/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->a:I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->clear()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->c(Lcom/naver/glink/android/sdk/ui/articles/a;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->menu:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/model/Menu;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v1, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    iput-object p1, v0, Lcom/naver/glink/android/sdk/ui/articles/a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;I)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$a;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$a;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->d(Lcom/naver/glink/android/sdk/ui/articles/a;)Lcom/naver/glink/android/sdk/ui/articles/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->d(Lcom/naver/glink/android/sdk/ui/articles/a;)Lcom/naver/glink/android/sdk/ui/articles/a$a;

    move-result-object v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->a:I

    invoke-interface {v0, v1, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/a$a;->a(ILcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Lcom/android/volley/VolleyError;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/a$2;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a$2;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V

    return-void
.end method
