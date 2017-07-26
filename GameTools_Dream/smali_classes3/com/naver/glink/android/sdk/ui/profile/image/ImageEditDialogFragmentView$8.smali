.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;
.super Ljava/lang/Object;
.source "ImageEditDialogFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->g(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->h(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
