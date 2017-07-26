.class Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;
.super Ljava/util/Timer;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

.field private final b:I

.field private final c:I

.field private d:Ljava/util/TimerTask;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->b:I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->b()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->c:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b$1;-><init>(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->d:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->c:I

    return v0
.end method

.method private b()I
    .locals 3

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$dimen;->viewer_animation_speed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->d:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$b;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
