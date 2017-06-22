.class public Lcom/samsung/android/spr/drawable/SprDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SprDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/SprDrawable$SprState;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final NA_NAME:Ljava/lang/String; = "n/a"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static mBitmapDrawable_alpha:I = 0x0

.field private static mBitmapDrawable_autoMirrored:I = 0x0

.field private static mBitmapDrawable_gravity:I = 0x0

.field private static mBitmapDrawable_src:I = 0x0

.field private static mBitmapDrawable_tileMode:I = 0x0

.field private static mBitmapDrawable_tileModeX:I = 0x0

.field private static mBitmapDrawable_tileModeY:I = 0x0

.field private static mBitmapDrawable_tint:I = 0x0

.field private static mBitmapDrawable_tintMode:I = 0x0

.field private static final mCanApplyTheme:Ljava/lang/reflect/Method;

.field private static final mExtractThemeAttrs:Ljava/lang/reflect/Method;

.field private static final mGetLayoutDirection:Ljava/lang/reflect/Method;

.field private static final mObtainForTheme:Ljava/lang/reflect/Method;

.field private static final mParseTintMode:Ljava/lang/reflect/Method;

.field private static final mResolveAttributes:Ljava/lang/reflect/Method;

.field private static mStyleableBitmapDrawable:[I = null

.field private static final mUpdateTintFilter:Ljava/lang/reflect/Method;

.field private static final mVersion:I = 0x24def


# instance fields
.field private mAnimationBitmap:Landroid/graphics/Bitmap;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheDensityDpi:I

.field protected mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

.field private mDstRect:Landroid/graphics/Rect;

.field private mIdentityMatrix:Landroid/graphics/Matrix;

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

.field private mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "updateTintFilter"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/PorterDuffColorFilter;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/res/ColorStateList;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/graphics/PorterDuff$Mode;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    :try_start_1
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "parseTintMode"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/PorterDuff$Mode;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    :goto_1
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    :try_start_2
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    :goto_2
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    :try_start_3
    const-class v3, Landroid/content/res/TypedArray;

    const-string v4, "extractThemeAttrs"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    :goto_3
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    :try_start_4
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "resolveAttributes"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, [I

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    :goto_4
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    :try_start_5
    const-class v3, Landroid/content/res/ColorStateList;

    const-string v4, "obtainForTheme"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/Resources$Theme;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    :goto_5
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mObtainForTheme:Ljava/lang/reflect/Method;

    :try_start_6
    const-class v3, Landroid/content/res/ColorStateList;

    const-string v4, "canApplyTheme"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    :goto_6
    sput-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    :try_start_7
    const-string v3, "com.android.internal.R$styleable"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "BitmapDrawable"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mStyleableBitmapDrawable:[I

    const-string v3, "BitmapDrawable_src"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_src:I

    const-string v3, "BitmapDrawable_alpha"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_alpha:I

    const-string v3, "BitmapDrawable_autoMirrored"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_autoMirrored:I

    const-string v3, "BitmapDrawable_gravity"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_gravity:I

    const-string v3, "BitmapDrawable_tileMode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileMode:I

    const-string v3, "BitmapDrawable_tileModeX"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileModeX:I

    const-string v3, "BitmapDrawable_tileModeY"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileModeY:I

    const-string v3, "BitmapDrawable_tint"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tint:I

    const-string v3, "BitmapDrawable_tintMode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tintMode:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v3

    goto :goto_7

    :catch_1
    move-exception v3

    goto/16 :goto_6

    :catch_2
    move-exception v3

    goto/16 :goto_5

    :catch_3
    move-exception v3

    goto/16 :goto_4

    :catch_4
    move-exception v3

    goto/16 :goto_3

    :catch_5
    move-exception v3

    goto/16 :goto_2

    :catch_6
    move-exception v3

    goto/16 :goto_1

    :catch_7
    move-exception v3

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    new-instance v1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-direct {v1, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method static synthetic access$1700(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static createFromPathName(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v4}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v5, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v5, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v5

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    invoke-direct {v0, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createFromStream(Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spr/drawable/SprDrawable;

    const-string v2, "n/a"

    invoke-static {v2, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "n/a"

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static createFromStream(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object v1

    goto :goto_0
.end method

.method private static createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x53

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v4, v7, [B

    if-nez p0, :cond_0

    const-string p0, "n/a"

    :cond_0
    invoke-virtual {v0, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-ge v6, v7, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    new-instance v6, Ljava/io/IOException;

    const-string v7, "file is too short"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    aget-byte v6, v4, v9

    if-ne v6, v11, :cond_2

    aget-byte v6, v4, v8

    const/16 v7, 0x56

    if-ne v6, v7, :cond_2

    aget-byte v6, v4, v10

    const/16 v7, 0x46

    if-eq v6, v7, :cond_3

    :cond_2
    aget-byte v6, v4, v9

    if-ne v6, v11, :cond_4

    aget-byte v6, v4, v8

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    aget-byte v6, v4, v10

    const/16 v7, 0x52

    if-ne v6, v7, :cond_4

    :cond_3
    new-instance v1, Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_0
    return-object v1

    :cond_4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static getDeviceDensityDpi(Landroid/content/res/Resources;)I
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method private static getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xc8

    const/16 v10, 0xff

    const/4 v9, 0x5

    new-instance v0, Lcom/samsung/android/spr/drawable/document/SprDocument;

    const/16 v1, 0x15e

    int-to-float v4, v1

    const/16 v1, 0x113

    int-to-float v5, v1

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;FFFF)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x32

    int-to-float v1, v1

    int-to-float v3, v11

    invoke-direct {v8, v2, v2, v1, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x32

    int-to-float v1, v1

    const/16 v3, 0x64

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/16 v3, -0x100

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x64

    int-to-float v1, v1

    const/16 v3, 0x96

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x96

    int-to-float v1, v1

    int-to-float v3, v11

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v10, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    int-to-float v1, v11

    const/16 v3, 0xfa

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0xfa

    int-to-float v1, v1

    const/16 v3, 0x12c

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x12c

    int-to-float v1, v1

    const/16 v3, 0x15e

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    int-to-float v1, v11

    const/16 v3, 0x32

    int-to-float v3, v3

    const/16 v4, 0xe1

    int-to-float v4, v4

    invoke-direct {v8, v2, v1, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x32

    int-to-float v1, v1

    int-to-float v3, v11

    const/16 v4, 0x64

    int-to-float v4, v4

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x64

    int-to-float v1, v1

    int-to-float v3, v11

    const/16 v4, 0x96

    int-to-float v4, v4

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v12, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x96

    int-to-float v1, v1

    int-to-float v3, v11

    int-to-float v4, v11

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    int-to-float v1, v11

    int-to-float v3, v11

    const/16 v4, 0xfa

    int-to-float v4, v4

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0xfa

    int-to-float v1, v1

    int-to-float v3, v11

    const/16 v4, 0x12c

    int-to-float v4, v4

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x12c

    int-to-float v1, v1

    int-to-float v3, v11

    const/16 v4, 0x15e

    int-to-float v4, v4

    const/16 v5, 0xe1

    int-to-float v5, v5

    invoke-direct {v8, v1, v3, v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v8, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v8, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0xe1

    int-to-float v1, v1

    const/16 v3, 0x15e

    int-to-float v3, v3

    const/16 v4, 0x113

    int-to-float v4, v4

    invoke-direct {v8, v2, v1, v3, v4}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;

    invoke-direct {v7}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;-><init>()V

    iput-byte v13, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->spreadMode:B

    iput v2, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->x1:F

    const/16 v1, 0xe1

    int-to-float v1, v1

    iput v1, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->y1:F

    const/16 v1, 0x15e

    int-to-float v1, v1

    iput v1, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->x2:F

    const/16 v1, 0xe1

    int-to-float v1, v1

    iput v1, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->y2:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->colors:[I

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, v7, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->positions:[F

    invoke-virtual {v7}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->updateGradient()V

    new-instance v6, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/4 v1, 0x3

    invoke-direct {v6, v1, v7}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BLcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;)V

    invoke-virtual {v8, v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v1, Lcom/samsung/android/spr/drawable/SprDrawable$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable$1;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getVersion()I
    .locals 1

    const v0, 0x24def

    return v0
.end method

.method private needMirroring()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_0
    return v2

    :catch_0
    move-exception v1

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCachedBitmap(III)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    if-eq v1, p3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->getCache(III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1, v3}, Lcom/samsung/android/spr/drawable/document/SprDocument;->preDraw(I)V

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/samsung/android/spr/drawable/document/SprDocument;->draw(Landroid/graphics/Canvas;III)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->addCache(Landroid/graphics/Bitmap;I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->lock(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateDensity(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I
    invoke-static {v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1002(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;
    invoke-static {v1, v3}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$802(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/NinePatch;)Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1602(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    sget-object v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->copyBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDensity(Landroid/content/res/Resources;)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I
    invoke-static {v7}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    or-int/2addr v13, v14

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I
    invoke-static {v7, v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1302(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    :try_start_0
    sget-object v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    check-cast v13, [I

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I
    invoke-static {v7, v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;[I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_src:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->setDocument(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    invoke-static {v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tintMode:I

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget-object v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PorterDuff$Mode;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v14, v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tint:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v13, v11}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget v14, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_gravity:I

    const/16 v15, 0x77

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v13, v14}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget v14, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_autoMirrored:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z
    invoke-static {v15}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z
    invoke-static {v13, v14}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v13

    sget v14, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_alpha:I

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileMode:I

    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v13, -0x2

    if-eq v8, v13, :cond_3

    invoke-static {v8}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_3
    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileModeX:I

    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v13, -0x2

    if-eq v9, v13, :cond_4

    invoke-static {v9}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_4
    sget v13, Lcom/samsung/android/spr/drawable/SprDrawable;->mBitmapDrawable_tileModeY:I

    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v13, -0x2

    if-eq v10, v13, :cond_5

    invoke-static {v10}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_5
    return-void

    :catch_0
    move-exception v1

    const/4 v13, 0x0

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I
    invoke-static {v7, v13}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;[I)[I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_2
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v13, v14}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1
.end method

.method private updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I
    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)[I

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :try_start_0
    sget-object v5, Lcom/samsung/android/spr/drawable/SprDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I
    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)[I

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/samsung/android/spr/drawable/SprDrawable;->mStyleableBitmapDrawable:[I

    aput-object v8, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/res/TypedArray;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :goto_2
    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    :try_start_2
    sget-object v5, Lcom/samsung/android/spr/drawable/SprDrawable;->mObtainForTheme:Ljava/lang/reflect/Method;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v4, v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v5

    :catch_1
    move-exception v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catch_2
    move-exception v3

    const/4 v2, 0x0

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v6

    move/from16 v0, v17

    float-to-int v11, v0

    const/16 v17, 0x800

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v17, 0x800

    move/from16 v0, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_1
    if-lez v12, :cond_0

    if-lez v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->isRunning()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$700(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # invokes: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->createNinePatchRenderer()V
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$900(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v17

    if-nez v17, :cond_d

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z
    invoke-static {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    :cond_4
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    invoke-virtual {v10}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v10}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->needMirroring()Z

    move-result v9

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$700(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_5
    if-eqz v7, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v11

    goto/16 :goto_1

    :cond_9
    if-eqz v8, :cond_c

    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->getAnimationIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/android/spr/drawable/document/SprDocument;->preDraw(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v11, :cond_b

    :cond_a
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v12, v11, v4}, Lcom/samsung/android/spr/drawable/document/SprDocument;->draw(Landroid/graphics/Canvas;III)V

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    :cond_b
    :try_start_2
    new-instance v14, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v11, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateCachedBitmap(III)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v16

    new-instance v19, Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    :goto_7
    if-nez v15, :cond_e

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_e
    if-nez v16, :cond_f

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_f
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    :goto_8
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->update()V

    :cond_14
    if-eqz v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    goto :goto_8

    :cond_16
    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_9
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I
    invoke-static {v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateCachedBitmap(III)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I
    invoke-static {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1302(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    return-object v0
.end method

.method public getDocument()Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 4

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v2

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v5, v5, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mStyleableBitmapDrawable:[I

    invoke-static {p1, p4, p3, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-direct {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-ne v1, p1, :cond_0

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-eq v1, p2, :cond_1

    :cond_0
    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;
    invoke-static {v0, p2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z
    invoke-static {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    # setter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->stop()V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getFrameAnimationCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->start()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->isIntrinsic()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->clone()Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance v1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    :cond_0
    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->toSPR(Ljava/io/OutputStream;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_0

    const-string v0, "SprDocument is null"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getLoadingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms\nElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalElementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSegment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalSegmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nAttribute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_0
    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
