.class public Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;
.super Landroid/widget/ImageView;
.source "ImageEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;,
        Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;,
        Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:I = 0x7d0

.field public static final d:I = 0xbb9

.field private static final g:I = 0x32

.field private static final h:I = 0xc8

.field private static final i:I = 0x1

.field private static final j:I = 0x5

.field private static final k:I = 0x7

.field private static final l:I = 0x9

.field private static final m:I = 0x3


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/graphics/Matrix;

.field private D:Landroid/graphics/Matrix;

.field private E:F

.field private F:F

.field private G:F

.field private H:Z

.field private I:Z

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Path;

.field private L:Z

.field private M:I

.field private N:I

.field private O:I

.field private P:Landroid/graphics/Bitmap;

.field private Q:Landroid/graphics/Canvas;

.field private R:Z

.field private S:Z

.field private T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

.field private U:Landroid/graphics/Rect;

.field public e:I

.field public f:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->getType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a:Ljava/lang/String;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ROUND:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->getType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->o:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->p:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->O:I

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->o:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->p:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->O:I

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->o:I

    iput v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->p:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->O:I

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    return p1
.end method

.method private a(II)V
    .locals 3

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    int-to-float v0, p1

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->F:F

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->forceLayout()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, p2

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, p1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->requestLayout()V

    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    int-to-float v0, p2

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->F:F

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 8

    if-ge p1, p3, :cond_0

    move v3, p1

    :goto_0
    if-ge p2, p4, :cond_1

    move v0, p2

    :goto_1
    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getMergedBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    return-void

    :cond_0
    move v3, p3

    goto :goto_0

    :cond_1
    move v0, p4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int v7, v3, v2

    if-le v7, v5, :cond_3

    sub-int v2, v5, v3

    :cond_3
    add-int v5, v0, v1

    if-le v5, v6, :cond_4

    sub-int v1, v6, v0

    :cond_4
    invoke-static {v4, v3, v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->L:Z

    goto :goto_2
.end method

.method private a(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v0, p3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v0, p1

    sub-int v0, v2, v3

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->o:I

    if-ge v0, v1, :cond_1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v4, v0, p4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v0, p2

    sub-int v0, v4, v5

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->p:I

    if-ge v0, v1, :cond_d

    if-gez p4, :cond_c

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_b

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    if-gez v3, :cond_2

    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v3, 0x7

    if-ne p5, v3, :cond_5

    const-string/jumbo v1, "imgedit"

    const-string/jumbo v3, "move => \uc67c\ucabd\uc73c\ub85c \ubd99\uc740\uacbd\uc6b0 7\ubc29\ud5a5 \ud06c\ub86d\uc740 \ucc98\ub9ac\ud558\uba74 \uc548\ub428."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    const/4 p3, 0x0

    const/4 p1, 0x0

    const/16 v2, 0x9

    if-ne p5, v2, :cond_6

    const-string/jumbo v1, "imgedit"

    const-string/jumbo v2, "move => \uc624\ub978\ucabd\uc73c\ub85c \ubd99\uc740\uacbd\uc6b0 9\ubc29\ud5a5 \ud06c\ub86d\uc740 \ucc98\ub9ac\ud558\uba74 \uc548\ub428."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v2

    if-le v4, v2, :cond_a

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p5, v1, :cond_7

    const/4 p1, 0x0

    move v1, p3

    move v3, p1

    :goto_4
    if-gez v5, :cond_4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x7

    if-ne p5, v4, :cond_8

    const/4 v3, 0x0

    :cond_4
    :goto_5
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v4, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_5
    const/4 v3, 0x1

    if-ne p5, v3, :cond_2

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v3, "move => \uc67c\ucabd\uc73c\ub85c \ubd99\uc740\uacbd\uc6b0 1\ubc29\ud5a5 \ud06c\ub86d\uc740 \ucc98\ub9ac\ud558\uba74 \uc548\ub428."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne p5, v2, :cond_3

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v2, "move => \uc624\ub978\ucabd\uc73c\ub85c \ubd99\uc740\uacbd\uc6b0 9\ubc29\ud5a5 \ud06c\ub86d\uc740 \ucc98\ub9ac\ud558\uba74 \uc548\ub428."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    if-ne p5, v1, :cond_9

    const/4 p3, 0x0

    move v1, p3

    move v3, p1

    goto :goto_4

    :cond_8
    const/16 v4, 0x9

    if-ne p5, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    move v1, p3

    move v3, p1

    goto :goto_4

    :cond_a
    move v2, v1

    move v3, p1

    move v1, p3

    goto :goto_4

    :cond_b
    move v1, p2

    goto/16 :goto_1

    :cond_c
    move v0, p4

    goto/16 :goto_0

    :cond_d
    move v0, p4

    move v1, p2

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$4;->a:[I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setRoundEffectedBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$4;->a:[I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Landroid/graphics/Canvas;Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Landroid/graphics/Canvas;Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;)V
    .locals 13

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v2, 0x0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->Q:Landroid/graphics/Canvas;

    const/high16 v1, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v10, v0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->U:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v11, v0

    add-int v12, v6, v11

    int-to-float v1, v7

    int-to-float v2, v12

    int-to-float v3, v8

    int-to-float v4, v12

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v12, v11

    int-to-float v1, v7

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v11, v7, v10

    int-to-float v1, v11

    int-to-float v2, v6

    int-to-float v3, v11

    int-to-float v4, v9

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v11, v10

    int-to-float v1, v0

    int-to-float v2, v6

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v1, v7, v0

    sub-int v2, v6, v0

    add-int v3, v9, v0

    add-int/2addr v0, v8

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->O:I

    add-int v5, v2, v4

    add-int v6, v1, v4

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v5, v5

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v5, v3, v4

    add-int v6, v1, v4

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v5, v5

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v7, v3

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v5, v6

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v1, v0, v4

    add-int v5, v2, v4

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v7, v2

    invoke-virtual {v6, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v6, v0

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v1, v3, v4

    sub-int v2, v0, v4

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v5, v0

    int-to-float v1, v1

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b(II)V
    .locals 12

    const/16 v3, 0x9

    const/4 v1, 0x7

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->A:I

    sub-int v6, p1, v5

    iget v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->B:I

    sub-int v9, p2, v5

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x32

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x32

    if-le p1, v5, :cond_0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x32

    if-le p2, v5, :cond_0

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x32

    if-ge p2, v5, :cond_0

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x5

    move v5, v0

    move v4, v9

    move v3, v6

    move v2, v9

    move v1, v6

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(IIIII)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x32

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x32

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    iget-boolean v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x32

    if-ge p1, v7, :cond_2

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x32

    add-int/2addr v5, v7

    if-ge p2, v5, :cond_1

    const-string/jumbo v5, "imgedit"

    const-string/jumbo v7, " touchMoveCrop => \uc67c\ucabd \uc704=7"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    move v7, v6

    move v8, v6

    move v6, v0

    move v0, v1

    :goto_1
    iget-object v10, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, -0x32

    iget-object v11, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v11, 0x32

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v11, v11, 0x32

    if-ge p2, v11, :cond_5

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v2, " touchMoveCrop => \uc704\ucabd"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    add-int/2addr v0, v10

    if-ge p1, v0, :cond_4

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v2, " touchMoveCrop => \uc704\ucabd \uc67c\ucabd=7"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    move v3, v6

    move v2, v9

    move v5, v1

    move v1, v9

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "imgedit"

    const-string/jumbo v7, " touchMoveCrop => \uc67c\ucabd \uc544\ub798=1"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-int v5, v6

    move v7, v0

    move v8, v6

    move v6, v0

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, -0x32

    if-le p1, v7, :cond_8

    const-string/jumbo v7, "imgedit"

    const-string/jumbo v8, " touchMoveCrop => \uc624\ub978\ucabd"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x32

    add-int/2addr v5, v7

    if-ge p2, v5, :cond_3

    const-string/jumbo v5, "imgedit"

    const-string/jumbo v7, " touchMoveCrop => \uc624\ub978\ucabd \uc704=9"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-int v5, v6

    move v7, v5

    move v8, v0

    move v5, v0

    move v0, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "imgedit"

    const-string/jumbo v7, " touchMoveCrop => \uc624\ub978\ucabd \uc544\ub798=3"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    move v7, v0

    move v8, v0

    move v0, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "imgedit"

    const-string/jumbo v1, " touchMoveCrop => \uc704\ucabd \uc624\ub978\ucabd=9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-int v6, v9

    move v4, v5

    move v2, v9

    move v1, v8

    move v5, v3

    move v3, v6

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x32

    if-le p2, v1, :cond_7

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v1, " touchMoveCrop => \uc544\ub798\ucabd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    add-int/2addr v0, v10

    if-ge p1, v0, :cond_6

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v1, " touchMoveCrop => \uc544\ub798\ucabd \uc67c\ucabd=1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-int v8, v9

    move v5, v2

    move v4, v9

    move v3, v6

    move v1, v8

    move v2, v7

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "imgedit"

    const-string/jumbo v1, " touchMoveCrop => \uc544\ub798\ucabd \uc624\ub978\ucabd=3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v3, v9

    move v2, v7

    move v1, v8

    move v4, v9

    goto/16 :goto_0

    :cond_7
    move v4, v5

    move v3, v6

    move v2, v7

    move v1, v8

    move v5, v0

    goto/16 :goto_0

    :cond_8
    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    goto/16 :goto_1

    :cond_9
    move v5, v0

    move v4, v0

    move v3, v0

    move v2, v0

    move v1, v0

    goto/16 :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v1, 0x0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    const/16 v2, 0xbb9

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v7

    sub-int v2, v9, v6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, -0x56000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v2, v8, v7

    int-to-float v3, v2

    sub-int v2, v9, v6

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sub-int v2, v8, v7

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int v3, v9, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-int v4, v8, v7

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, v7

    int-to-float v1, v6

    const/4 v2, 0x0

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x32

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x32

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x32

    if-le p2, v3, :cond_1

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x32

    if-ge p2, v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->O:I

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->K:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    const v1, -0x1a1a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->s:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    const v1, -0x331a1a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->u:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->u:Landroid/graphics/Paint;

    const v1, -0x4dcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->u:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->u:Landroid/graphics/Paint;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->M:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    const v1, -0x100d0a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->N:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private i()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v3, v0, 0x5

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->q:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget v6, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->r:I

    if-nez v6, :cond_2

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "imgedit"

    const-string/jumbo v1, "CROP_ASPECTX & CROP_ASPECTY is == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->q:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->r:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->r:I

    mul-int/2addr v0, v3

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->q:I

    div-int/2addr v0, v1

    :goto_2
    sub-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v5, v0

    div-int/lit8 v2, v2, 0x2

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->q:I

    mul-int/2addr v0, v3

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->r:I

    div-int/2addr v0, v1

    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_2
.end method

.method private j()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v2, v0, v2

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_1
.end method

.method private setRoundEffectedBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->c(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->H:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->H:Z

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    iput v12, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    int-to-float v4, v0

    div-float/2addr v2, v4

    int-to-float v4, v0

    mul-float/2addr v4, v2

    int-to-float v7, v3

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    iget v8, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_4

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v0, v0

    int-to-float v2, v3

    div-float v2, v0, v2

    :cond_3
    :goto_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3d4c0000    # -90.0f

    move v3, v12

    move v7, v5

    move v8, v6

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v9}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_5

    iget v8, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_1
.end method

.method public b()V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    neg-float v2, v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->F:F

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->F:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(IIII)V

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setEditMode(I)V

    return-void
.end method

.method public c()V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ROUND:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setRoundEffectedBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->L:Z

    return-void
.end method

.method public f()Z
    .locals 3

    const/16 v2, 0x32

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public getEditMode()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    return v0
.end method

.method public getMergedBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    const/high16 v4, 0x43340000    # 180.0f

    rem-float/2addr v3, v4

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->f:I

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v1

    aget v4, v3, v0

    float-to-int v4, v4

    aget v5, v3, v1

    float-to-int v5, v5

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->invalidate()V

    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->J:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    iget-boolean v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    iput v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->A:I

    iput v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->B:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    const/16 v2, 0xbb9

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b(II)V

    :cond_2
    iput v4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->A:I

    iput v5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->B:I

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->S:Z

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->R:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->w:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(II)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->E:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->C:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public setCropRectAspects(II)V
    .locals 2

    const/16 v1, 0xc8

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->q:I

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->r:I

    if-ge p1, p2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->o:I

    if-le p1, p2, :cond_1

    :goto_1
    iput v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->p:I

    return-void

    :cond_0
    mul-int/lit16 v0, p1, 0xc8

    div-int/2addr v0, p2

    goto :goto_0

    :cond_1
    mul-int/lit16 v0, p2, 0xc8

    div-int v1, v0, p1

    goto :goto_1
.end method

.method public setEditMode(I)V
    .locals 3

    const/16 v1, 0xbb9

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->P:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->Q:Landroid/graphics/Canvas;

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->i()V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$a;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$b;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->n:I

    goto :goto_0
.end method

.method public setRotate()V
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->G:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->y:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->z:I

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->a(II)V

    goto :goto_0
.end method

.method public setType(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->T:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    return-void
.end method
