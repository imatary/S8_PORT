.class Lcom/naver/glink/android/sdk/ui/media/a$a$1;
.super Ljava/lang/Object;
.source "AllMediaAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/a$a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/a$a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$1;->a:Lcom/naver/glink/android/sdk/ui/media/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$a$1;->a:Lcom/naver/glink/android/sdk/ui/media/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/media/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1
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
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/media/a$a$1;->a(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, p2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/media/a$a$1;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
