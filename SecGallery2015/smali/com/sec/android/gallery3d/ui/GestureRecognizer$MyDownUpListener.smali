.class Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;Lcom/sec/android/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->getPointerScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcom/sec/android/gallery3d/ui/GestureRecognizer;

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

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    goto :goto_0

    :cond_0
    return-void
.end method
