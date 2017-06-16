.class final Lcom/samsung/android/spr/drawable/SprDrawable$SprState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SprDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spr/drawable/SprDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SprState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

.field private mChangingConfigurations:I

.field private mDensityDpi:I

.field private mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

.field private mGravity:I

.field private mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

.field private mNinePatch:Z

.field private mNinePatchBitmap:Landroid/graphics/Bitmap;

.field private mNinePatchRenderer:Landroid/graphics/NinePatch;

.field private mRebuildShader:Z

.field private mThemeAttrs:[I

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    iput v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    const/16 v0, 0x77

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    if-nez v0, :cond_0

    invoke-direct {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->createNinePatchRenderer()V

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    iget v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    iget v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iget v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    iput v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    const/16 v0, 0x77

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    iput-boolean v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->setDocument(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mRebuildShader:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mGravity:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/NinePatch;)Landroid/graphics/NinePatch;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->createNinePatchRenderer()V

    return-void
.end method

.method private createNinePatchRenderer()V
    .locals 12

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v9}, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v9, v10}, Lcom/samsung/android/spr/drawable/document/SprDocument;->preDraw(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicHeight()I

    move-result v3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    new-instance v6, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v9, v6, v8, v3, v10}, Lcom/samsung/android/spr/drawable/document/SprDocument;->draw(Landroid/graphics/Canvas;III)V

    :cond_1
    iget-boolean v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v2

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v9, v9, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v9, v9, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v9, v9, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v5, v8, v9

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v9, v9, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v0, v3, v9

    if-le v5, v4, :cond_3

    :goto_0
    if-le v0, v7, :cond_4

    :goto_1
    invoke-direct {p0, v4, v7, v5, v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getNinePatchChunk(IIII)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v9, Landroid/graphics/NinePatch;

    iget-object v10, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {p0, v9}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getNinePatchChunk(Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v9, Landroid/graphics/NinePatch;

    iget-object v10, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    goto :goto_2
.end method

.method private getNinePatchChunk(IIII)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private getNinePatchChunk(Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;)Ljava/nio/ByteBuffer;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v5

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    new-array v11, v15, [I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    new-array v9, v15, [I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    new-array v14, v15, [I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    new-array v12, v15, [I

    const/4 v7, -0x1

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v3, v15, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v15, v15, v3

    mul-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v15, v15, v3

    mul-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gt v6, v8, :cond_0

    add-int/lit8 v6, v8, 0x1

    :cond_0
    if-gt v8, v7, :cond_1

    add-int/lit8 v15, v10, -0x1

    aput v6, v9, v15

    :goto_1
    move v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aput v8, v11, v10

    aput v6, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v3, v15, :cond_5

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v15, v15, v3

    mul-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v15, v15, v3

    mul-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gt v6, v8, :cond_3

    add-int/lit8 v6, v8, 0x1

    :cond_3
    if-gt v8, v7, :cond_4

    add-int/lit8 v15, v13, -0x1

    aput v6, v12, v15

    :goto_3
    move v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aput v8, v14, v13

    aput v6, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    mul-int/lit8 v15, v10, 0x2

    add-int/lit8 v15, v15, 0x1

    mul-int/lit8 v16, v13, 0x2

    add-int/lit8 v16, v16, 0x1

    mul-int v4, v15, v16

    mul-int/lit8 v15, v10, 0x8

    add-int/lit8 v15, v15, 0x2a

    mul-int/lit8 v16, v13, 0x8

    add-int v15, v15, v16

    mul-int/lit8 v16, v4, 0x4

    add-int v15, v15, v16

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    mul-int/lit8 v15, v15, 0x2

    int-to-byte v15, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/lit8 v15, v15, 0x2

    int-to-byte v15, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v15, v4

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_6

    aget v15, v11, v3

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v15, v9, v3

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v13, :cond_7

    aget v15, v14, v3

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v15, v12, v3

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    return-object v2
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    # getter for: Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/samsung/android/spr/drawable/SprDrawable;->access$1800()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mThemeAttrs:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDensityScale()F
    .locals 2

    const/high16 v1, 0x43200000    # 160.0f

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mDensity:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v0, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v0, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    return-object v0
.end method

.method public setDocument(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchLeft:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchTop:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchRight:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_7

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getFileAttributeSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v3, v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getFileAttribute(I)Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    if-eqz v0, :cond_8

    iget-byte v3, v0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->mType:B

    if-ne v3, v4, :cond_8

    iput-boolean v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mNinePatch:Z

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;

    :cond_4
    # invokes: Lcom/samsung/android/spr/drawable/SprDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I
    invoke-static {v7}, Lcom/samsung/android/spr/drawable/SprDrawable;->access$1700(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDensityDpi:I

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/spr/drawable/document/debug/SprDebug;->IsDebug:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->printDebug()V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    iput-object v7, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    :cond_6
    new-instance v3, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->mCacheManager:Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
