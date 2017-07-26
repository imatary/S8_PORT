.class Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;
.super Ljava/lang/Object;
.source "SmallTouchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->setOnHomeBannerTouchEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;F)F

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->b(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;F)F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->b(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->c(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;->a:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->c(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
