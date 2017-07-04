.class Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;
.super Ljava/lang/Object;
.source "GlRootView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlRootView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public OnRotation(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$200(Lcom/sec/android/gallery3d/glcore/GlRootView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$200(Lcom/sec/android/gallery3d/glcore/GlRootView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$200(Lcom/sec/android/gallery3d/glcore/GlRootView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotationListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mRotationListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    invoke-interface {v3, v2, p1}, Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;->onRotate(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlRootView$RotationListener;->this$0:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->access$100(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->dispatchRotation(Lcom/sec/android/gallery3d/glcore/GlRotationGestureDetector;)V

    :cond_4
    return-void
.end method
