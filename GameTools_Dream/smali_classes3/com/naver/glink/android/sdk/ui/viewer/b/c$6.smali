.class Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/b/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0, v3}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return v3
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/c;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->glide_image_url_tag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/viewer/b/c$6;->a(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
