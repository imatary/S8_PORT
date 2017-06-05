.class public Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;
.super Landroid/widget/FrameLayout;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field public static final AUTUMN_EFFECT:I = 0x53

.field public static final SPRING_EFFECT:I = 0x51

.field public static final SUMMER_EFFECT:I = 0x52

.field public static final WINTER_EFFECT:I = 0x54


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mIsAnimationPlay:Z

.field private mIsParserSuccess:Z

.field private mPackageName:Ljava/lang/String;

.field private mUnlockEffectType:I

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "XmlParserView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string/jumbo v0, "XmlParserView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XmlName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Default package name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->setBackgroundColor(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    return-void
.end method

.method public getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnlockEffect()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    return v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isParserSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsParserSuccess:Z

    return v0
.end method

.method public parserAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, -0x2

    const/4 v11, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v15, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mXmlName:Ljava/lang/String;

    const-string/jumbo v3, "xml"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    return-object v2

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d1

    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "scene"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "parabola"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string/jumbo v3, "sinX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "sinY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "round"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string/jumbo v3, "ellipse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_67

    const-string/jumbo v3, "alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "translateX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "translateY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_92

    const-string/jumbo v3, "scaleX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string/jumbo v3, "scaleY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string/jumbo v3, "ImageResource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b9

    const-string/jumbo v3, "frame"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c6

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c9

    :cond_3
    move v2, v11

    move v3, v12

    move-object v4, v13

    move-object v5, v14

    :goto_2
    move v11, v2

    move v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_1

    :cond_4
    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v2, 0x0

    move v5, v2

    move v3, v12

    move v2, v11

    :goto_3
    if-lt v5, v6, :cond_5

    move-object v5, v4

    move-object v4, v13

    goto :goto_2

    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "img"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "y"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "width"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "height"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "pivotX"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "pivotY"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "alpha"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "scaleX"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "scaleY"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v7, "drawable"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v15

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setX(F)V

    goto :goto_4

    :cond_8
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v15

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setY(F)V

    goto :goto_4

    :cond_9
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v15

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v3, v7

    float-to-int v3, v3

    goto :goto_4

    :cond_a
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v15

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_4

    :cond_b
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v15

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setPivotX(F)V

    goto :goto_4

    :cond_c
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v15

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setPivotY(F)V

    goto :goto_4

    :cond_d
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setAlpha(F)V

    goto :goto_4

    :cond_e
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setScaleX(F)V

    goto :goto_4

    :cond_f
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setScaleY(F)V

    goto :goto_4

    :cond_10
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    const-string/jumbo v4, "snow"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string/jumbo v4, "rain"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "leaf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "flower"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/16 v4, 0x51

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_6

    :cond_13
    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/16 v4, 0x54

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_6

    :cond_14
    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/16 v4, 0x52

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto :goto_6

    :cond_15
    new-instance v4, Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/16 v4, 0x53

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mUnlockEffectType:I

    goto/16 :goto_6

    :cond_16
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v4, :cond_18

    :cond_17
    move v3, v12

    move-object v4, v2

    move-object v5, v14

    move v2, v11

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string/jumbo v7, "toDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_19
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_8

    :cond_1a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_8

    :cond_1b
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_8

    :cond_1c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_8

    :cond_1d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_8

    :cond_1e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_8

    :cond_1f
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_9
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_8

    :cond_20
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_21
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_9

    :cond_22
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_23
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_24
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_8

    :cond_25
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "key"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    const-string/jumbo v7, "xFrom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string/jumbo v7, "xTo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    const-string/jumbo v7, "xOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_29

    const-string/jumbo v7, "yOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2b

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_26
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    goto :goto_b

    :cond_27
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_b

    :cond_28
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_b

    :cond_29
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_b

    :cond_2a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_b

    :cond_2b
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_b

    :cond_2c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_b

    :cond_2d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_b

    :cond_2e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_b

    :cond_2f
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_c
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_b

    :cond_30
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_c

    :cond_31
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_c

    :cond_32
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_c

    :cond_33
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_c

    :cond_34
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_b

    :cond_35
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "key"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    const-string/jumbo v7, "adjust"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    const-string/jumbo v7, "xFrom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string/jumbo v7, "xTo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    const-string/jumbo v7, "xOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3a

    const-string/jumbo v7, "yOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_42

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_36
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    goto :goto_e

    :cond_37
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_e

    :cond_38
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_e

    :cond_39
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_e

    :cond_3a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_e

    :cond_3b
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_e

    :cond_3c
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_e

    :cond_3d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_e

    :cond_3e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_e

    :cond_3f
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_e

    :cond_40
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_f
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_e

    :cond_41
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_f

    :cond_42
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_f

    :cond_43
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_f

    :cond_44
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_f

    :cond_45
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_46
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "key"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    const-string/jumbo v7, "adjust"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_48

    const-string/jumbo v7, "yFrom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_49

    const-string/jumbo v7, "yTo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string/jumbo v7, "yOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    const-string/jumbo v7, "xOffSet"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4d

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4e

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_50

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_51

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_55

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_56

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    :cond_47
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->key:F

    goto :goto_11

    :cond_48
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->adjust:F

    goto :goto_11

    :cond_49
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_11

    :cond_4a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_11

    :cond_4b
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->yOffSet:F

    goto :goto_11

    :cond_4c
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->xOffSet:F

    goto :goto_11

    :cond_4d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_11

    :cond_4e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_11

    :cond_4f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_11

    :cond_50
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_11

    :cond_51
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_12
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_11

    :cond_52
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_12

    :cond_53
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_12

    :cond_54
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_12

    :cond_55
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_12

    :cond_56
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_11

    :cond_57
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "r"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_58

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_59

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5a

    const-string/jumbo v7, "fromDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string/jumbo v7, "toDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5c

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5e

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5f

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_60

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_63

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_66

    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_58
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->r:F

    goto :goto_14

    :cond_59
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->a:F

    goto :goto_14

    :cond_5a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->b:F

    goto :goto_14

    :cond_5b
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_14

    :cond_5c
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_14

    :cond_5d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_14

    :cond_5e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_14

    :cond_5f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_14

    :cond_60
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_14

    :cond_61
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_15
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_14

    :cond_62
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_15

    :cond_63
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_15

    :cond_64
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_15

    :cond_65
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_15

    :cond_66
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_67
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ra"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_68

    const-string/jumbo v7, "rb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_69

    const-string/jumbo v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string/jumbo v7, "b"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6b

    const-string/jumbo v7, "fromDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6c

    const-string/jumbo v7, "toDegrees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6d

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6e

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_70

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_71

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_72

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_77

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_68
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->ra:F

    goto :goto_17

    :cond_69
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->rb:F

    goto :goto_17

    :cond_6a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->a:F

    goto :goto_17

    :cond_6b
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->b:F

    goto :goto_17

    :cond_6c
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_17

    :cond_6d
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_17

    :cond_6e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_17

    :cond_6f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_17

    :cond_70
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_17

    :cond_71
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_17

    :cond_72
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_18
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_17

    :cond_73
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_18

    :cond_74
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_18

    :cond_75
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_18

    :cond_76
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_18

    :cond_77
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_17

    :cond_78
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromAlpha"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_79

    const-string/jumbo v7, "toAlpha"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7a

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7c

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7d

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7e

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_81

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_79
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_1a

    :cond_7a
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_1a

    :cond_7b
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1a

    :cond_7c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1a

    :cond_7d
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1a

    :cond_7e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1a

    :cond_7f
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_1b
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_80
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1b

    :cond_81
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_1b

    :cond_82
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1b

    :cond_83
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_1b

    :cond_84
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_85
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromXDelta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_86

    const-string/jumbo v7, "toXDelta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_87

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_89

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8a

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8b

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8c

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8e

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_90

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_91

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_86
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_1d

    :cond_87
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_1d

    :cond_88
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_1d

    :cond_89
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_1d

    :cond_8a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_1d

    :cond_8b
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_1d

    :cond_8c
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_1e
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    :cond_8d
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1e

    :cond_8e
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_1e

    :cond_8f
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1e

    :cond_90
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_1e

    :cond_91
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1d

    :cond_92
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromYDelta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string/jumbo v7, "toYDelta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_94

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_95

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_96

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_97

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_98

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_99

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9b

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9d

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9e

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_93
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_20

    :cond_94
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_20

    :cond_95
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_20

    :cond_96
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_20

    :cond_97
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_20

    :cond_98
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_20

    :cond_99
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_21
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_20

    :cond_9a
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_21

    :cond_9b
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_21

    :cond_9c
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_21

    :cond_9d
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_21

    :cond_9e
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_20

    :cond_9f
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromXScale"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a0

    const-string/jumbo v7, "toXScale"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a1

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a2

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a3

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a4

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a5

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a6

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a8

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_aa

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ab

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_a0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_23

    :cond_a1
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_23

    :cond_a2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_23

    :cond_a3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_23

    :cond_a4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_23

    :cond_a5
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_23

    :cond_a6
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_24
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_23

    :cond_a7
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_24

    :cond_a8
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a9

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_24

    :cond_a9
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_24

    :cond_aa
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_24

    :cond_ab
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_23

    :cond_ac
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fromYScale"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ad

    const-string/jumbo v7, "toYScale"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ae

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_af

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b0

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b2

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b3

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b5

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b7

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b8

    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_ad
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->from:F

    goto :goto_26

    :cond_ae
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->to:F

    goto :goto_26

    :cond_af
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_26

    :cond_b0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_26

    :cond_b1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_26

    :cond_b2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_26

    :cond_b3
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_27
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_26

    :cond_b4
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_27

    :cond_b5
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_27

    :cond_b6
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_27

    :cond_b7
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_27

    :cond_b8
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_26

    :cond_b9
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "length"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ba

    const-string/jumbo v7, "image"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bb

    const-string/jumbo v7, "duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bc

    const-string/jumbo v7, "repeatCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bd

    const-string/jumbo v7, "repeatMode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_be

    const-string/jumbo v7, "delay"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_bf

    const-string/jumbo v7, "accelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c0

    const-string/jumbo v7, "decelerateInterpolator"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c2

    const-string/jumbo v6, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c4

    const-string/jumbo v6, "normalSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c5

    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_ba
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->length:I

    goto :goto_29

    :cond_bb
    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewId:I

    goto :goto_29

    :cond_bc
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->duration:J

    goto :goto_29

    :cond_bd
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatCount:I

    goto :goto_29

    :cond_be
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->repeatMode:I

    goto :goto_29

    :cond_bf
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->delay:J

    goto :goto_29

    :cond_c0
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_2a
    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_29

    :cond_c1
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_2a

    :cond_c2
    const-string/jumbo v5, "default"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_2a

    :cond_c3
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_2a

    :cond_c4
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_2a

    :cond_c5
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_29

    :cond_c6
    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;

    invoke-direct {v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v4, :cond_17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "top"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c7

    const-string/jumbo v7, "minInterval"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c8

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_c7
    iput v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->top:I

    goto :goto_2c

    :cond_c8
    iput v6, v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->minInterval:I

    goto :goto_2c

    :cond_c9
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eqz v13, :cond_3

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v3, :cond_3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "XmlParserView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "item name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "frameSize"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ca

    const-string/jumbo v6, "image"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cb

    const-string/jumbo v6, "background"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cd

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ce

    const-string/jumbo v6, "scale"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cf

    const-string/jumbo v6, "startIndex"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d0

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_ca
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_cb
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string/jumbo v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_cc
    const-string/jumbo v4, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->backgroundId:I

    goto :goto_2e

    :cond_cd
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_ce
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_cf
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_d0
    iget-object v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_d1
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d2

    const-string/jumbo v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d3

    const-string/jumbo v3, "parabola"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d4

    const-string/jumbo v3, "sinX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d5

    const-string/jumbo v3, "sinY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d6

    const-string/jumbo v3, "round"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d7

    const-string/jumbo v3, "ellipse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string/jumbo v3, "alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    const-string/jumbo v3, "translateX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_da

    const-string/jumbo v3, "translateY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string/jumbo v3, "scaleX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dc

    const-string/jumbo v3, "scaleY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string/jumbo v3, "ImageResource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_de

    const-string/jumbo v3, "frame"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_1

    new-instance v2, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;

    iget v4, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->backgroundId:I

    iget-object v5, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v6, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v7, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v3, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->top:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->setTop(I)V

    iget v3, v13, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;->setMinInterval(I)V

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/sec/opentheme/xmlparser/Frame;)V

    goto/16 :goto_1

    :cond_d2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v11}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->addView(Landroid/view/View;II)V

    const/4 v12, -0x2

    const/4 v11, -0x2

    goto/16 :goto_1

    :cond_d3
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "rotation"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d4
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "parabola"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d5
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "sinX"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d6
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "sinY"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d7
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "round"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d8
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "ellipse"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_d9
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "alpha"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_da
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "x"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_db
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "y"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_dc
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "scaleX"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_dd
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "scaleY"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_de
    if-nez v14, :cond_df

    :goto_2f
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    const-string/jumbo v3, "ImageResource"

    invoke-virtual {v13, v14, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation;->buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    :cond_df
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/Animation$FrameImageView;->setApkContext(Landroid/content/Context;)V

    goto :goto_2f
.end method

.method public pauseAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "pauseAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->pauseAnimation()V

    goto :goto_0
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->playAnimation()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "resumeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->resumeAnimation()V

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->stopAnimation()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->playAnimation()V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->playAnimation()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "XmlParserView"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mIsAnimationPlay:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/xmlparser/XmlParserView;->mComplexAnimation:Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/xmlparser/ComplexAnimation;->stopAnimation()V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method
