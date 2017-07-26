.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setEditMode(I)V

    return-void
.end method
