.class public Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
.super Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;
.source "MultiLineTexture.java"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/CanvasTexture;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;ZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;FZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZF)Landroid/text/TextPaint;

    move-result-object v8

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    new-instance v4, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p6

    invoke-direct/range {v4 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    new-instance v5, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    invoke-direct {v5, v4}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;-><init>(Landroid/text/Layout;)V

    return-object v5
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;Z)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;ZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;ZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move v7, p6

    invoke-static/range {v0 .. v8}, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;Landroid/graphics/Typeface;FZF)Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
