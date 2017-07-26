.class Lcom/naver/glink/android/sdk/ui/articles/a/b$2;
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

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/articles/a/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/a/b;Lcom/naver/glink/android/sdk/model/Article;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$2;->b:Lcom/naver/glink/android/sdk/ui/articles/a/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$2;->a:Lcom/naver/glink/android/sdk/model/Article;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b$2;->a:Lcom/naver/glink/android/sdk/model/Article;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    return-void
.end method
