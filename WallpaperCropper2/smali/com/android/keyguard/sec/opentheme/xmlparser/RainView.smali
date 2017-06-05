.class public Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;
.super Landroid/view/View;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;


# static fields
.field public static G:I

.field private static MAX_POOL_SIZE:I


# instance fields
.field list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mRainPool:[Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

.field private rainline:Landroid/graphics/Bitmap;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->G:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->list:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->refresh:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->MAX_POOL_SIZE:I

    new-array v0, v0, [Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->rainline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->refresh:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :goto_1
    return-void

    :cond_0
    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->x:F

    invoke-static {v5, v6}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->y:F

    invoke-static {v6, v7}, Lcom/android/keyguard/sec/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Rain;->next()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->invalidate()V

    goto :goto_1
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->refresh:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;->invalidate()V

    return-void
.end method
