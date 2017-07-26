.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

.field private b:F

.field private c:F


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->c:F

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    goto :goto_0
.end method
