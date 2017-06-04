.class public Lcom/sec/samsung/gallery/util/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static mRobotoBoldFont:Landroid/graphics/Typeface;

.field private static mRobotoCondensedBoldFont:Landroid/graphics/Typeface;

.field private static mRobotoCondensedRegularFont:Landroid/graphics/Typeface;

.field private static mRobotoLightFont:Landroid/graphics/Typeface;

.field private static mRobotoMediumFont:Landroid/graphics/Typeface;

.field private static mRobotoRegularFont:Landroid/graphics/Typeface;

.field private static resTextAppearance:[I

.field private static resTextAppearanceTextSize:I

.field private static resTheme:[I

.field private static resThemeActionMenuTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/util/FontUtil;->resThemeActionMenuTextAppearance:I

    sput v0, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearanceTextSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionMenuTextappearanceSize(Landroid/content/Context;)F
    .locals 9

    const/4 v6, -0x1

    const/4 v8, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTheme:[I

    if-nez v5, :cond_0

    const-string/jumbo v5, "Theme"

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/ResStyleUtils;->getResStyleableIntArray(Ljava/lang/String;)[I

    move-result-object v5

    sput-object v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTheme:[I

    :cond_0
    sget v5, Lcom/sec/samsung/gallery/util/FontUtil;->resThemeActionMenuTextAppearance:I

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "Theme_actionMenuTextAppearance"

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/ResStyleUtils;->getResStyleableInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/util/FontUtil;->resThemeActionMenuTextAppearance:I

    :cond_1
    sget-object v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearance:[I

    if-nez v5, :cond_2

    const-string/jumbo v5, "TextAppearance"

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/ResStyleUtils;->getResStyleableIntArray(Ljava/lang/String;)[I

    move-result-object v5

    sput-object v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearance:[I

    :cond_2
    sget v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearanceTextSize:I

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "TextAppearance_textSize"

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/ResStyleUtils;->getResStyleableInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearanceTextSize:I

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/samsung/gallery/util/FontUtil;->resTheme:[I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Lcom/sec/samsung/gallery/util/FontUtil;->resThemeActionMenuTextAppearance:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearance:[I

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Lcom/sec/samsung/gallery/util/FontUtil;->resTextAppearanceTextSize:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    const v3, 0x3f99999a    # 1.2f

    :cond_4
    mul-float v5, v3, v2

    return v5
.end method

.method public static getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public static getRobotoBoldFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoBoldFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoBoldFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoBoldFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoCondensedBoldFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedBoldFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec-roboto-condensed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedBoldFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedBoldFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoCondensedRegularFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedRegularFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec-roboto-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedRegularFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoCondensedRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoLightFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoLightFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoLightFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoMediumFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoMediumFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoMediumFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoMediumFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getRobotoRegularFont()Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoRegularFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoRegularFont:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/FontUtil;->mRobotoRegularFont:Landroid/graphics/Typeface;

    return-object v0
.end method
