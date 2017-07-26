.class Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;
.super Ljava/util/Timer;
.source "WidgetFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

.field private b:Ljava/util/TimerTask;

.field private c:I


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;Landroid/os/Handler;I)V
    .locals 2

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->a:Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;I)I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->b(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->c:I

    :goto_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->b:Ljava/util/TimerTask;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;->a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->c:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/floating/WidgetFloatingLayout$b;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
