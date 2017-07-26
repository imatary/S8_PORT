.class Lcom/naver/glink/android/sdk/ui/article/a/d$1;
.super Ljava/lang/Object;
.source "ImageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/naver/glink/android/sdk/ui/article/a/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->e:Lcom/naver/glink/android/sdk/ui/article/a/d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->b:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iput p4, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->c:I

    iput p5, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->e:Lcom/naver/glink/android/sdk/ui/article/a/d;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->b:Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->c:I

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$1;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/a/d;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V

    return-void
.end method
