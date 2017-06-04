.class Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
.super Landroid/os/Handler;
.source "OverlayHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private final mViewPagerAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->mViewPagerAdapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->mViewPagerAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    if-nez v0, :cond_0

    const-string v1, "OverlayHelp"

    const-string v2, "handleMessage :: viewPagerAdapter is null, return."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startArrowAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->access$1800(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V

    const-wide/16 v2, 0x13a9

    invoke-virtual {p0, v4, v2, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->removeMessages(I)V

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->startOneHandZoomAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->access$1900(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V

    const-wide/16 v2, 0x170c

    invoke-virtual {p0, v5, v2, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
