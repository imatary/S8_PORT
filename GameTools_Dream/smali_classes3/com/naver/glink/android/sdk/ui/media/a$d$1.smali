.class Lcom/naver/glink/android/sdk/ui/media/a$d$1;
.super Ljava/lang/Object;
.source "AllMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/a$d;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/media/a$d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/a$d;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a$d$1;->b:Lcom/naver/glink/android/sdk/ui/media/a$d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/media/a$d$1;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$d$1;->b:Lcom/naver/glink/android/sdk/ui/media/a$d;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/media/a$d;->a:Lcom/naver/glink/android/sdk/ui/media/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$d$1;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/a;->a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/a$c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$d$1;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/a$c;-><init>(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method
