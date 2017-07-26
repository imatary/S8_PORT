.class Lcom/naver/glink/android/sdk/ui/article/a/b$1;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "FooterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/a/b;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/a/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a/b;Landroid/widget/ImageView;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/b$1;->b:Lcom/naver/glink/android/sdk/ui/article/a/b;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/a/b$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/b$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/a/b$1;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a/b$1;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
