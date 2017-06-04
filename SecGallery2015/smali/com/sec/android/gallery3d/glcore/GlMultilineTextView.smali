.class public Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;
.super Lcom/sec/android/gallery3d/glcore/GlView;
.source "GlMultilineTextView.java"


# instance fields
.field private mMultiLineTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

.field private final mPaint:Landroid/text/TextPaint;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mPaint:Landroid/text/TextPaint;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mMultiLineTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setSize(II)V

    return-void
.end method

.method private static getAlignment(Ljava/lang/String;Z)Landroid/text/Layout$Alignment;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isIncludeRtlChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isIncludeRtlChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;FZZF)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;
    .locals 11

    move/from16 v0, p6

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getAlignment(Ljava/lang/String;Z)Landroid/text/Layout$Alignment;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;FZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v10

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    invoke-direct {v1, v10}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;-><init>(Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;)V

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZFZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;
    .locals 10

    move/from16 v0, p7

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getAlignment(Ljava/lang/String;Z)Landroid/text/Layout$Alignment;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v8}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;ZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v9

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    invoke-direct {v1, v9}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;-><init>(Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;)V

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/graphics/Typeface;ZZ)Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;
    .locals 8

    invoke-static {p0, p6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getAlignment(Ljava/lang/String;Z)Landroid/text/Layout$Alignment;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;Z)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v7

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;-><init>(Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;)V

    return-object v0
.end method


# virtual methods
.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mMultiLineTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setText(Ljava/lang/String;IFILandroid/graphics/Typeface;Z)V
    .locals 7

    invoke-static {p1, p6}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->getAlignment(Ljava/lang/String;Z)Landroid/text/Layout$Alignment;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;Z)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mMultiLineTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->mMultiLineTexture:Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->setSize(II)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/GlMultilineTextView;->invalidate()V

    return-void
.end method
