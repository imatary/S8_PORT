.class Lcom/naver/glink/android/sdk/ui/floating/b$2;
.super Ljava/lang/Object;
.source "RecordWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/b;->c(Lcom/naver/glink/android/sdk/ui/floating/b;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->d(Lcom/naver/glink/android/sdk/ui/floating/b;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->e(Lcom/naver/glink/android/sdk/ui/floating/b;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->g(Lcom/naver/glink/android/sdk/ui/floating/b;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v4

    invoke-interface {v4}, Lcom/naver/glink/android/sdk/ui/floating/b$b;->a()V

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4, v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;F)F

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;F)F

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;I)I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;I)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/naver/glink/android/sdk/ui/floating/b$b;->a(Landroid/view/MotionEvent;)V

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4, v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->j(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/naver/glink/android/sdk/ui/floating/b$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a()V

    :goto_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->d(Lcom/naver/glink/android/sdk/ui/floating/b;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->c(Lcom/naver/glink/android/sdk/ui/floating/b;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->k(Lcom/naver/glink/android/sdk/ui/floating/b;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->k(Lcom/naver/glink/android/sdk/ui/floating/b;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x320

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    :cond_5
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1, v4, v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->a(Lcom/naver/glink/android/sdk/ui/floating/b;J)J

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->l(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->m(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1, p2, v2, v3}, Lcom/naver/glink/android/sdk/ui/floating/b$b;->a(Landroid/view/MotionEvent;II)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->g(Lcom/naver/glink/android/sdk/ui/floating/b;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    new-instance v4, Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v6}, Lcom/naver/glink/android/sdk/ui/floating/b;->j(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->j(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/naver/glink/android/sdk/ui/floating/b$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a()V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Lcom/naver/glink/android/sdk/ui/floating/b$a;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->j(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/naver/glink/android/sdk/ui/floating/b$a;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a()V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v1

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->n(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v2

    sget-object v3, Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;->WIDGET:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    invoke-static {v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Landroid/app/Fragment;Lcom/naver/glink/android/sdk/ui/record/c;Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->o(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->l(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/ui/floating/b;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_b

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->m(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v1

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_c

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/ui/floating/b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->p(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->q(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->p(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->f(Lcom/naver/glink/android/sdk/ui/floating/b;)Lcom/naver/glink/android/sdk/ui/floating/b$b;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/naver/glink/android/sdk/ui/floating/b$b;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/floating/b;->l(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$2;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->m(Lcom/naver/glink/android/sdk/ui/floating/b;)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
