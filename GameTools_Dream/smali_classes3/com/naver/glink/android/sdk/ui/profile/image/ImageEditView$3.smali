.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;
.super Ljava/lang/Object;
.source "ImageEditView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;I)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->a:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;I)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->invalidate()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;->b:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;Z)Z

    return-void
.end method
