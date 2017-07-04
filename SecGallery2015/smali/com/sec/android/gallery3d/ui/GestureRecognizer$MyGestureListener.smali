.class Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v0, v3, v4}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v3

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v4

    mul-float/2addr v4, p4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v0, p1, p2, v3, v4}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onLongPress(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$400(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$500(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8, p2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$600(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$700(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F

    move-result v9

    add-float/2addr v9, p3

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$702(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$800(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F

    move-result v9

    add-float/2addr v9, p4

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$802(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$700(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F

    move-result v8

    add-float/2addr p3, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$800(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)F

    move-result v8

    add-float/2addr p4, v8

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$702(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$802(Lcom/sec/android/gallery3d/ui/GestureRecognizer;F)F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v9

    mul-float/2addr v9, p3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v1, v9

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v9

    mul-float/2addr v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v2, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v3, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v5, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v6, v9

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFFFF)Z

    move-result v9

    or-int/2addr v7, v9

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v0, v3, v4}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method
