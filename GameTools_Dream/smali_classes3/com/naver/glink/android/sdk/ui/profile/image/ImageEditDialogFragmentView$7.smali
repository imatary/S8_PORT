.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;
.super Ljava/lang/Object;
.source "ImageEditDialogFragmentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->e(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setCropRectAspects(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Ljava/lang/String;)V

    return-void
.end method
