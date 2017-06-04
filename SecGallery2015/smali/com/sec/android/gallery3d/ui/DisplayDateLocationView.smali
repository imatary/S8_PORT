.class public Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "DisplayDateLocationView.java"


# static fields
.field private static final FEATURE_IS_NOS:Z

.field private static final MSG_HIDE_DISPLAY_DATE_LOCATION:I = 0x1

.field private static final MSG_UPDATE_LOCATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DisplayDateLocationView"


# instance fields
.field private dateStr:Ljava/lang/String;

.field private infoGapH:I

.field private infoGapV:I

.field private infoIconSize:I

.field private infoMarginBottom:I

.field private infoMarginRight:I

.field private infoTextColor:I

.field private infoTextSize:F

.field private locationStrForGL:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mDateAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mDateAltTextX:I

.field private mDateAltTextY:I

.field private mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mDateIconX:I

.field private mDateIconY:I

.field private final mDisplayDateLocationHandler:Landroid/os/Handler;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

.field private mLocAltTextX:I

.field private mLocAltTextY:I

.field private mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

.field private mLocationIconX:I

.field private mLocationIconY:I

.field private mLocationInfoThread:Ljava/lang/Thread;

.field private strokeColor:I

.field private strokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->FEATURE_IS_NOS:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplaySize()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDefaultVar(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;-><init>(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->hide(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setLocationTextResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplayDateLocationInfoPosition()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDisplayDateLocationInfo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v1, "DisplayDateLocationView"

    const-string/jumbo v2, "item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    :cond_2
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UriVideo;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$2;-><init>(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Lcom/sec/android/gallery3d/util/ReverseGeocoder;Lcom/sec/android/gallery3d/data/MediaItem;)V

    const-string/jumbo v3, "getDisPlayLocationInfo"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v6, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private hide(Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->getVisibility()I

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

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DisplayDateLocationView"

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

.method private setDateTextResource()V
    .locals 6

    const/high16 v5, 0x447a0000    # 1000.0f

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextColor:I

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextSize:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextColor:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeWidth:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeColor:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getStrokePaint(FIFI)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    goto :goto_0
.end method

.method private setDefaultVar(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoIconSize:I

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoMarginRight:I

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapH:I

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapV:I

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoMarginBottom:I

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextSize:F

    const v1, 0x7f1000d4

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextColor:I

    const v1, 0x7f0b0579

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeWidth:F

    const v1, 0x7f1000d5

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeColor:I

    return-void
.end method

.method private setDisplayDateLocationInfoPosition()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->FEATURE_IS_NOS:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    :goto_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayHeight:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoMarginBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconY:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapV:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextY:I

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIconX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIconY:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapV:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIconY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoGapH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextY:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoIconSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    goto :goto_0
.end method

.method private setDisplaySize()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayHeight:I

    return-void
.end method

.method private setIconResource(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0201fb

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0201fa

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    :cond_1
    return-void
.end method

.method private setLocationTextResource(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextSize:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextColor:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getNormalPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextSize:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->infoTextColor:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeWidth:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->strokeColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getStrokePaint(FIFI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;F)Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    goto :goto_0
.end method

.method private show()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->getVisibility()I

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

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->startAnimation(Lcom/sec/android/gallery3d/anim/CanvasAnimation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDisplayDateLocationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DisplayDateLocationView"

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
.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDefaultVar(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplaySize()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDateTextResource()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setLocationTextResource(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplayDateLocationInfoPosition()V

    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->FEATURE_IS_NOS:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIconX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mLocationIconY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->FEATURE_IS_NOS:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->dateStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIcon:Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateIconY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextStroke:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltText:Lcom/sec/android/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mDateAltTextY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public setDisplayDateLocationView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->hide(Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->getDisplayDateLocationInfo(Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDateTextResource()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setIconResource(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplayDateLocationInfoPosition()V

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setShowBarState(ZZ)V

    :cond_0
    return-void
.end method

.method public setShowBarState(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->hide(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->show()V

    goto :goto_0
.end method
