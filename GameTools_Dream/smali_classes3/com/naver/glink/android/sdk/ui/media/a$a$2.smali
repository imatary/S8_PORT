.class Lcom/naver/glink/android/sdk/ui/media/a$a$2;
.super Ljava/lang/Object;
.source "AllMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/a$a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/media/a$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/a$a;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$2;->b:Lcom/naver/glink/android/sdk/ui/media/a$a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$2;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$2;->b:Lcom/naver/glink/android/sdk/ui/media/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/media/a$a;->h:Lcom/naver/glink/android/sdk/ui/media/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$2;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/a;->a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/a$b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$2;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/a$b;-><init>(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method
