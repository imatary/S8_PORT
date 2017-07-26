.class public Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;
.super Landroid/widget/RelativeLayout;
.source "TransparentGlinkLayout.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    sput v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    const/16 v0, 0xa

    sput v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->c:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->d:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->c:I

    sget v2, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->c:I

    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->d:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->c:I

    sget v1, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowAlpha(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->c:I

    sget v0, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->a:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setLongClickable(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/widget/TransparentGlinkLayout;->setLongClickable(Z)V

    goto :goto_0
.end method
