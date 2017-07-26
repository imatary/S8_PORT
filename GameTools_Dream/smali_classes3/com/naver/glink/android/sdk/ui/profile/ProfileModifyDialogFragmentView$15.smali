.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "ProfileModifyDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$15;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
