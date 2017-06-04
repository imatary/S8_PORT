.class Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->access$300(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-interface {v0, v4, v5, v6}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onScale(FFF)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;
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

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v0, v3, v4}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/sec/android/gallery3d/ui/GestureRecognizer;->mListeners:Ljava/util/ArrayList;
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

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onScaleEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method
