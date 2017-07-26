.class Lcom/naver/glink/android/sdk/ui/articles/a/b$1;
.super Lcom/naver/glink/android/sdk/a/o;
.source "NoticeViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/a/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/model/Article;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/articles/a/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/a/b;Lcom/naver/glink/android/sdk/model/Article;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->c:Lcom/naver/glink/android/sdk/ui/articles/a/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->a:Lcom/naver/glink/android/sdk/model/Article;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/b$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->a:Lcom/naver/glink/android/sdk/model/Article;

    iget v1, v1, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/b$a;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;->a:Lcom/naver/glink/android/sdk/model/Article;

    iget v1, v1, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;I)V

    return-void
.end method
