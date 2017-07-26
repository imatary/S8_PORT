.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->photo_upload_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->d:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setEditMode(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
