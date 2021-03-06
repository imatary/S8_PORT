.class public Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack$FreeformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;
    }
.end annotation


# static fields
.field private static final HINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final freeformAreaAlpha:I

.field public final freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

.field public final hintTextAlpha:I

.field public final hintTextOrientation:I

.field private mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

.field private mHintAreaPaint:Landroid/graphics/Paint;

.field private mHintAreaRadius:F

.field private mHintStrokePaint:Landroid/graphics/Paint;

.field private mHintText:Ljava/lang/String;

.field private mHintTextAlpha:I

.field private mHintTextBounds:Landroid/graphics/Point;

.field private mHintTextLine1:Ljava/lang/String;

.field private mHintTextLine2:Ljava/lang/String;

.field private mHintTextMargin:I

.field private mHintTextPaint:Landroid/graphics/Paint;

.field private final mHintTextResId:I

.field private mIsOneLine:Z

.field private mTextFont:Landroid/graphics/Typeface;

.field private mTextPadding:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;

    const-string/jumbo v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mIsOneLine:Z

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x6647bbf3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    iput p4, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextResId:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    const v1, 0x663bbfeb

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    const v1, -0x33be4822    # -5.0782072E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string/jumbo v0, "sec-roboto-condensed"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextFont:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;-><init>(IIII)V

    return-void
.end method

.method private calculateBound(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v9, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    if-ne v0, v11, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mIsOneLine:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    int-to-float v1, v9

    int-to-float v2, v10

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextOrientation:I

    if-ne v0, v11, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextLine1:Ljava/lang/String;

    int-to-float v1, v9

    int-to-float v2, v10

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextLine2:Ljava/lang/String;

    int-to-float v1, v9

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V
    .locals 8

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-eq v3, p2, :cond_1

    if-eqz p6, :cond_5

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-eq v3, p3, :cond_2

    if-eqz p6, :cond_7

    sget-object v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput p3, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    if-le p3, v3, :cond_6

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->calculateBound(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p7, :cond_8

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mFreeformAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_7
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextAlpha:I

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public update(Landroid/content/Context;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextResId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    const v10, 0x7f0d038b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v4, v10, Landroid/content/res/Configuration;->fontScale:F

    const v10, 0x3f8ccccd    # 1.1f

    cmpl-float v10, v4, v10

    if-lez v10, :cond_0

    const v4, 0x3f8ccccd    # 1.1f

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    int-to-float v11, v5

    mul-float/2addr v11, v4

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    const v10, 0x7f0d038c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextMargin:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v7, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextMargin:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v8, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v9, v10

    if-gt v9, v8, :cond_1

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mIsOneLine:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mIsOneLine:Z

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const v11, 0x7f0b0110

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x40400000    # 3.0f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x7f0b0112

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintStrokePaint:Landroid/graphics/Paint;

    const v11, 0x7f0d036c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v10, 0x7f0d036d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintAreaRadius:F

    const v10, 0x7f0d0369

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mTextPadding:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->calculateBound(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    int-to-float v12, v8

    const/4 v13, 0x2

    new-array v13, v13, [F

    int-to-float v14, v8

    const/4 v15, 0x0

    aput v14, v13, v15

    int-to-float v14, v8

    const/4 v15, 0x1

    aput v14, v13, v15

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14, v12, v13}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_5

    :cond_3
    if-nez v2, :cond_4

    add-int/lit8 v2, v3, -0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextLine1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintText:Ljava/lang/String;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextLine2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->mHintTextLine1:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method
