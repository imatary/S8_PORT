.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreateInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGLLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$400(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->showContextMenu(FF)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
