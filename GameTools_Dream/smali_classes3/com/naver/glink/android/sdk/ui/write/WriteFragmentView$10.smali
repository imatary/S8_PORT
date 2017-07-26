.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/write/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

.field final synthetic b:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    div-int/2addr v0, p2

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Response;Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$10;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method
