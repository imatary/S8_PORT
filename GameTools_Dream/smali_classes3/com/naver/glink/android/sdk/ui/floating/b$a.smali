.class Lcom/naver/glink/android/sdk/ui/floating/b$a;
.super Ljava/util/Timer;
.source "RecordWidgetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/floating/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/floating/b;

.field private final b:I

.field private c:Ljava/util/TimerTask;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/b;Landroid/os/Handler;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->a:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const/16 v1, 0xc8

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->b:I

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->c(Lcom/naver/glink/android/sdk/ui/floating/b;I)I

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v3

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v3

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lez v3, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    div-int/lit16 v3, v1, 0xc8

    if-lez v3, :cond_3

    div-int/lit16 v1, v1, 0xc8

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->d:I

    div-int/lit16 v1, v0, 0xc8

    if-lez v1, :cond_1

    div-int/lit16 v0, v0, 0xc8

    add-int/lit8 v2, v0, 0x1

    :cond_1
    iput v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->e:I

    :goto_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/ui/floating/b$a$1;-><init>(Lcom/naver/glink/android/sdk/ui/floating/b$a;Lcom/naver/glink/android/sdk/ui/floating/b;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->c:Ljava/util/TimerTask;

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_8

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lez v3, :cond_5

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_5
    div-int/lit16 v3, v1, 0xc8

    if-lez v3, :cond_7

    div-int/lit16 v1, v1, 0xc8

    add-int/lit8 v1, v1, 0x1

    :goto_2
    iput v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->d:I

    div-int/lit16 v1, v0, 0xc8

    if-lez v1, :cond_6

    div-int/lit16 v0, v0, 0xc8

    add-int/lit8 v2, v0, 0x1

    :cond_6
    iput v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->e:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    if-ne p3, v0, :cond_b

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v3

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v1, v3

    div-int/lit16 v3, v0, 0xc8

    if-lez v3, :cond_a

    div-int/lit16 v0, v0, 0xc8

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->d:I

    div-int/lit16 v0, v1, 0xc8

    if-lez v0, :cond_9

    div-int/lit16 v0, v1, 0xc8

    add-int/lit8 v2, v0, 0x1

    :cond_9
    iput v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->e:I

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->i(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v3

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/floating/b;->h(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v1, v3

    div-int/lit16 v3, v0, 0xc8

    if-lez v3, :cond_d

    div-int/lit16 v0, v0, 0xc8

    add-int/lit8 v0, v0, 0x1

    :goto_4
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->d:I

    div-int/lit16 v0, v1, 0xc8

    if-lez v0, :cond_c

    div-int/lit16 v0, v1, 0xc8

    add-int/lit8 v2, v0, 0x1

    :cond_c
    iput v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->e:I

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/floating/b$a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/floating/b$a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->e:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$a;->c:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/floating/b$a;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
