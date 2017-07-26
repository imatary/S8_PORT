.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/configure/c;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$5;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
