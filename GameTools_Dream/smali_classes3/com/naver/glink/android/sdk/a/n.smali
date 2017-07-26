.class public Lcom/naver/glink/android/sdk/a/n;
.super Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;
.source "ScaleErrorImageViewTarget.java"


# instance fields
.field a:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/naver/glink/android/sdk/a/n;->a:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;)Lcom/naver/glink/android/sdk/a/n;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/a/n;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/a/n;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/a/n;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/a/n;->a:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/GlideDrawableImageViewTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
