.class Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;
.super Ljava/lang/Object;
.source "ImageEditView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setRotate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->invalidate()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;Z)Z

    return-void
.end method
