.class public Lcom/sec/android/gallery3d/ui/EnvironmentTagView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "EnvironmentTagView.java"


# static fields
.field private static final KEY_ALTITUDE:Ljava/lang/String; = "Altitude"

.field private static final KEY_LOCALIZED_NAME:Ljava/lang/String; = "LocalizedName"

.field private static final KEY_RELATIVE_HUMIDITY:Ljava/lang/String; = "RelativeHumidity"

.field private static final KEY_TEMPERATURE:Ljava/lang/String; = "Temperature"

.field private static final KEY_UNIT:Ljava/lang/String; = "Unit"

.field private static final KEY_WEATHER:Ljava/lang/String; = "WeatherIcon"

.field private static final MSG_HIDE_ENVIRONMENT_TAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EnvironmentTagView"

.field private static final sUseTagShotAltitudeInfo:Z


# instance fields
.field private final DEGREE:I

.field private altitudeStr:Ljava/lang/String;

.field private humidStr:Ljava/lang/String;

.field private infoGapH:I

.field private infoGapV:I

.field private infoIconSize:I

.field private infoMarginBottom:I

.field private infoMarginRight:I

.field private infoTextColor:I

.field private infoTextSize:F

.field private locAltTextX:I

.field private locAltTextY:I

.field private locationIconX:I

.field private locationIconY:I

.field private locationStr:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mEnvironmentHandler:Landroid/os/Handler;

.field private mHasTagInfo:Z

.field private mIconArray:Landroid/util/SparseIntArray;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mTagInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mWeatherIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private temperHumidTextX:I

.field private temperHumidTextY:I

.field private temperStr:Ljava/lang/String;

.field private unitStr:Ljava/lang/String;

.field private weatherIconX:I

.field private weatherIconY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTagShotAltitudeInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->sUseTagShotAltitudeInfo:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    const/16 v0, 0xb0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->DEGREE:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setDisplaySize()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setDefaultVar(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setIconArray()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView$1;-><init>(Lcom/sec/android/gallery3d/ui/EnvironmentTagView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mEnvironmentHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/EnvironmentTagView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->hide(Z)V

    return-void
.end method

.method private getEnvironmentTagInfo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "EnvironmentTagView"

    const-string/jumbo v2, "item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "EnvironmentTagView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mime type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/samsung/gallery/util/EnvironmentTagUtils;->getTagShotInfoFromSEFData(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    if-nez v1, :cond_3

    const-string/jumbo v1, "EnvironmentTagView"

    const-string/jumbo v2, "taginfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->sUseTagShotAltitudeInfo:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "Altitude"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "RelativeHumidity"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->humidStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "LocalizedName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "Temperature"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "Unit"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->unitStr:Ljava/lang/String;

    const-string/jumbo v1, "null"

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null"

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null"

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null"

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->humidStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null"

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->unitStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperStr:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->humidStr:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->unitStr:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private getNormalPaint(FI)Landroid/text/TextPaint;
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method private getStrokePaint(FI)Landroid/text/TextPaint;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    return-object v0
.end method

.method private getWeatherIconImage()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTagInfo:Ljava/util/HashMap;

    const-string/jumbo v3, "WeatherIcon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string/jumbo v2, "EnvironmentTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWeatherIconImage iconNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "EnvironmentTagView"

    const-string/jumbo v3, "weather info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hide(Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "EnvironmentTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDefaultVar(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoIconSize:I

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoMarginRight:I

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapH:I

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapV:I

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoMarginBottom:I

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    const v1, 0x7f1000d4

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    return-void
.end method

.method private setDisplaySize()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mDisplayWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mDisplayHeight:I

    return-void
.end method

.method private setEnvironmentInfoPosition()V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mDisplayWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mDisplayHeight:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoMarginBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconY:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconX:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapV:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextY:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconX:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconY:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconX:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapV:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoGapH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextY:I

    return-void
.end method

.method private setIconArray()V
    .locals 7

    const v6, 0x7f020372

    const v5, 0x7f020370

    const v2, 0x7f02036a

    const v4, 0x7f020371

    const v3, 0x7f020363

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f020366

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f02036c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f02036c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020373

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f02036d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, 0x7f02036d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const v2, 0x7f02036e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const v2, 0x7f020365

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const v2, 0x7f02036b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const v2, 0x7f02036b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x18

    const v2, 0x7f020368

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const v2, 0x7f02036f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const v2, 0x7f020367

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const v2, 0x7f020364

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const v2, 0x7f020374

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x21

    const v2, 0x7f020362

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x22

    const v2, 0x7f020369

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x27

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const v2, 0x7f020373

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const v2, 0x7f020373

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b

    const v2, 0x7f020365

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private setIconArrayMass()V
    .locals 7

    const v6, 0x7f020370

    const v2, 0x7f020372

    const v5, 0x7f02036e

    const v4, 0x7f020371

    const v3, 0x7f020363

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x7f02036a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    const v2, 0x7f02036c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const v2, 0x7f02036b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    const v2, 0x7f02036f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const v2, 0x7f020373

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x1ae

    const v2, 0x7f020365

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x191

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x192

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x193

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x226

    const v2, 0x7f020367

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x352

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mIconArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x373

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private setIconResource(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getWeatherIconImage()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f020140

    invoke-direct {v1, p1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mWeatherIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mWeatherIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    goto :goto_0
.end method

.method private setTextResource()V
    .locals 5

    const/16 v4, 0xb0

    const/high16 v3, 0x447a0000    # 1000.0f

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->sUseTagShotAltitudeInfo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->altitudeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getStrokePaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->unitStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->humidStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->unitStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->humidStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getStrokePaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationStr:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getStrokePaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->infoTextColor:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    goto :goto_1
.end method

.method private show()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mEnvironmentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mEnvironmentHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mEnvironmentHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mEnvironmentHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "EnvironmentTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getHasTagInfo()Z
    .locals 3

    const-string/jumbo v0, "EnvironmentTagView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current tagshot includes weather information:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mHasTagInfo:Z

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setDefaultVar(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setDisplaySize()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setTextResource()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setEnvironmentInfoPosition()V

    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->locationIconY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mTemperHumidText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->temperHumidTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mWeatherIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mWeatherIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->weatherIconY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public setEnvironmentTagView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->hide(Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->getEnvironmentTagInfo(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setIconResource(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setTextResource()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setEnvironmentInfoPosition()V

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->setShowBarState(ZZ)V

    :cond_0
    return-void
.end method

.method public setShowBarState(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->hide(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->show()V

    goto :goto_0
.end method
