.class Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;
.super Landroid/os/Handler;
.source "SpenScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# static fields
.field public static final DISMISS:I = 0x0

.field public static final UPDATE:I = 0x1


# instance fields
.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->mView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
