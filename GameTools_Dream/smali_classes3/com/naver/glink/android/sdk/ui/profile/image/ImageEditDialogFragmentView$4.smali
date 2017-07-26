.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;
.super Lcom/naver/glink/android/sdk/a/o;
.source "ImageEditDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->c()V

    goto :goto_0
.end method
