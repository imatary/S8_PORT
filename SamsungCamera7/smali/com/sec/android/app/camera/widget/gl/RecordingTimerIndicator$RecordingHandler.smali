.class Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;
.super Landroid/os/Handler;
.source "RecordingTimerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingHandler"
.end annotation


# instance fields
.field private final mIndicator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->mIndicator:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->mIndicator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator$RecordingHandler;->mIndicator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->access$100(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->access$200(Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;Z)V

    goto :goto_0
.end method
