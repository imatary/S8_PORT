.class Lcom/naver/glink/android/sdk/ui/article/a/d$5;
.super Ljava/lang/Object;
.source "ImageViewHolder.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Landroid/net/Uri;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/a/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->d(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->c(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->e(Lcom/naver/glink/android/sdk/ui/article/a/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return v2
.end method

.method public a(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a:Lcom/naver/glink/android/sdk/ui/article/a/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/a/d;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v2, p2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/article/a/d$5;->a(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
