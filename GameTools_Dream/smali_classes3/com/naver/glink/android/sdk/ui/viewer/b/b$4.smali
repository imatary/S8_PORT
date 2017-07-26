.class Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;
.super Ljava/lang/Object;
.source "PhotoViewHolder.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
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
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->c(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/PlugProgressbar;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->b(Lcom/naver/glink/android/sdk/ui/viewer/b/b;)Luk/co/senab/photoview/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;F)F

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->a:Landroid/content/Context;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/b;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->a(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/viewer/b/b$4;->a(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
