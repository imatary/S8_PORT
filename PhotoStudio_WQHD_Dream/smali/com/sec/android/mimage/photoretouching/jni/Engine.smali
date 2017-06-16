.class public Lcom/sec/android/mimage/photoretouching/jni/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static final MI_FACE_BEAUTY_LEVEL1:I = 0x1

.field public static final MI_FACE_BEAUTY_LEVEL2:I = 0x2

.field public static final MI_FACE_BEAUTY_LEVEL3:I = 0x3

.field public static final MI_FACE_BEAUTY_LEVEL4:I = 0x4

.field public static final MI_FACE_BEAUTY_LEVEL5:I = 0x5

.field public static final MI_FACE_DETECT_MODE1:I = 0x1

.field public static final MI_FACE_DETECT_MODE2:I = 0x2

.field public static final MI_FACE_DETECT_MODE3:I = 0x3

.field public static final MI_FACE_DETECT_MODE4:I = 0x4

.field public static final MI_FLAG_ALREADY_DONE:I = 0xd001

.field public static final MI_FLAG_PROCESSING:I = 0xd003

.field public static final MI_FLAG_STOP_PROCESS:I = 0xd002

.field public static final MI_MIRROR_SIDE_BOTTOM:I = 0xe006

.field public static final MI_MIRROR_SIDE_LEFT:I = 0xe003

.field public static final MI_MIRROR_SIDE_RIGHT:I = 0xe004

.field public static final MI_MIRROR_SIDE_TOP:I = 0xe005

.field public static final MI_MIRROR_TYPE_HORIZONTAL:I = 0xe002

.field public static final MI_MIRROR_TYPE_VERTICAL:I = 0xe001

.field public static final MI_SUCCESS:I = 0xa000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "photoeditorEngine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native DeInitBLC(I)I
.end method

.method public static native adjustRGB([I[B[IIIIIILandroid/graphics/Rect;)V
.end method

.method public static native adjustRGBRange100([I[B[IIIIIILandroid/graphics/Rect;)V
.end method

.method public static native applyAutoAdjust([I[III)I
.end method

.method public static native applyAutoWhiteBalance([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyBLCSave([I[IIII)I
.end method

.method public static native applyBluewash([I[III)V
.end method

.method public static native applyBluewashPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyBlur([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native applyCartoonize([I[III)I
.end method

.method public static native applyCartoonizePartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static applyDarken([I[B[IIILandroid/graphics/Rect;)V
    .locals 7

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlBrightness([I[B[IIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public static native applyDawnCast([I[I[I[III)V
.end method

.method public static native applyDawnCastPartial([I[I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applyDownlight([I[III)V
.end method

.method public static native applyDownlightPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyGammaTransformPreview(II)I
.end method

.method public static native applyGothicNoir([I[III)V
.end method

.method public static native applyGothicNoirPartial([I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applyHalftone([I[III)I
.end method

.method public static native applyHalftonePartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static native applyImpressionist([I[I[I[III)V
.end method

.method public static native applyImpressionistPartial([I[I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applyInvert([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyKaleidoscope([I[III)I
.end method

.method public static native applyLightFlare([I[I[III)V
.end method

.method public static native applyLightFlarePartial([I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applyLightStreak([I[I[III)V
.end method

.method public static native applyLightStreakPartial([I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static applyLighten([I[B[IIILandroid/graphics/Rect;)V
    .locals 7

    const/16 v5, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->controlBrightness([I[B[IIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public static native applyMagicPen([I[III)I
.end method

.method public static native applyMagicPenPartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static native applyMiniature([I[III)V
.end method

.method public static native applyNostalgia([I[III)V
.end method

.method public static native applyNostalgiaPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyOilpaint([I[III)I
.end method

.method public static native applyOilpaintPartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static native applyOldPhoto([I[III)V
.end method

.method public static native applyOldPhotoPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyOldPhotoTexture([I[I[III)V
.end method

.method public static native applyOldPhotoTexturePartial([I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applyPixelize([I[IIII)V
.end method

.method public static native applyPointColorBlue([I[III)V
.end method

.method public static native applyPointColorGreen([I[III)V
.end method

.method public static native applyPointColorRed([I[III)V
.end method

.method public static native applyPointColorYellow([I[III)V
.end method

.method public static native applyPopArt([I[III)V
.end method

.method public static native applyPosterize([I[IIII)I
.end method

.method public static native applyPosterizePartial([I[B[IIIILandroid/graphics/Rect;)I
.end method

.method public static native applyRainbow([I[III)V
.end method

.method public static native applyRainbowPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyReflection([I[IIII)I
.end method

.method public static native applyRegionBasedBrightness([I[IIIIII)I
.end method

.method public static native applyRegionBasedContrast([I[IIIIII)I
.end method

.method public static native applyRegionBasedExposure([I[IIIIII)I
.end method

.method public static native applyRetro([I[III)V
.end method

.method public static native applyRetroPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applySepia([I[III)I
.end method

.method public static native applySepiaPartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static native applySharpen([I[IIII)I
.end method

.method public static native applySharpenPartial([I[B[IIIILandroid/graphics/Rect;)I
.end method

.method public static native applySketch([I[III)I
.end method

.method public static native applySketchPartial([I[B[IIILandroid/graphics/Rect;)I
.end method

.method public static native applySketchTexture([I[I[III)I
.end method

.method public static native applySketchTexturePartial([I[I[I[BIILandroid/graphics/Rect;)I
.end method

.method public static native applySoftglow([I[IIII)V
.end method

.method public static native applySoftglowPartial([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native applyStardust([I[I[III)V
.end method

.method public static native applyStardustPartial([I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applySunburst([I[I[III)V
.end method

.method public static native applySunburstPartial([I[I[I[BIILandroid/graphics/Rect;)V
.end method

.method public static native applySunshine([I[III)V
.end method

.method public static native applySunshinePartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyTiltShift([I[IIIII)V
.end method

.method public static native applyToneCurve([III[I[I[I)V
.end method

.method public static native applyTurquoise([I[III)V
.end method

.method public static native applyTurquoisePartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyVignette([I[III)V
.end method

.method public static native applyVignettePartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyVintage([I[III)V
.end method

.method public static native applyVintagePartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native applyYellowglow([I[III)V
.end method

.method public static native applyYellowglowPartial([I[B[IIILandroid/graphics/Rect;)V
.end method

.method public static native autoBLCInit([I[IIII)I
.end method

.method public static native controlBlackAndWhite([I[IIII)V
.end method

.method public static native controlBrightness([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlBrightness2016([I[IIII)V
.end method

.method public static native controlBrightnessRange100([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlColorTuning([I[III[I[I[I[I[I[I[II)V
.end method

.method public static native controlContrast([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlContrastRange100([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlEdgeLens([I[IIIII)V
.end method

.method public static native controlExposure([I[IIII)V
.end method

.method public static native controlFadedColour([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlGreyscale([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlHue([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlHueRange100([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlKelvinRange10000([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlSaturation([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlSaturationRange100([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlTemperature([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlTemperatureRange100([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native controlToneCurve([III[FII[F[I)V
.end method

.method public static native controlTopLens([I[IIIII)V
.end method

.method public static native copyInputAlpha([I[III)I
.end method

.method public static native deleteStoredMask()I
.end method

.method public static native deleteStoredObject()I
.end method

.method public static native destroyBlur()V
.end method

.method public static native destroyTiltShift()V
.end method

.method public static native drawObject([III[IIIFLandroid/graphics/Rect;)I
.end method

.method public static native drawSplash([IIIIII)I
.end method

.method public static native drawSplashPreview([IIIII[IIII)I
.end method

.method public static native exitEraser()I
.end method

.method public static native finishPortrait()V
.end method

.method public static native finishSplash()I
.end method

.method public static native getAutoAdjustCutoff()I
.end method

.method public static native getAutoAdjustThreshold()I
.end method

.method public static native getAutoAdjustWeight1()I
.end method

.method public static native getAutoAdjustWeight2()I
.end method

.method public static native getAverageLuminance([IIIIIII)I
.end method

.method public static native getBeautyLevel()I
.end method

.method public static native getCurveParameters(I[I[III[FI[F[I)V
.end method

.method public static native getDetectOption()I
.end method

.method public static native getEraserStatus()I
.end method

.method public static native getMaxFaceCnt()I
.end method

.method public static native getMirrorOutheight(IIII)I
.end method

.method public static native getMirrorOutwidth(IIII)I
.end method

.method public static native getParametricCurveFittingPoints([I[III[F)V
.end method

.method public static native getRotateHeight(III)I
.end method

.method public static native getRotateWidth(III)I
.end method

.method public static native getportraitstatus()I
.end method

.method public static native initBlur([I[BIILandroid/graphics/Rect;)V
.end method

.method public static native initPortrait(III[IIILcom/sec/android/mimage/photoretouching/lpe/states/Portrait$FaceInfo;)V
.end method

.method public static native initSplash([III)I
.end method

.method public static native initTiltShift([III)V
.end method

.method public static native makeTiltShift([I[IIIII)V
.end method

.method public static native pasteObject([I[I[B[IIIIILandroid/graphics/Rect;)V
.end method

.method public static native reStartEraser()I
.end method

.method public static native recoverMask([BIILandroid/graphics/Rect;)I
.end method

.method public static native recoverObject([IIILandroid/graphics/Rect;)I
.end method

.method public static native recoverSplash([III)I
.end method

.method public static native removeRedeye([IIIIII)I
.end method

.method public static native removeRedeyeApplyOnFull([I[IIIIII)I
.end method

.method public static native removeRedeyePreview([III[IIIIII)I
.end method

.method public static native rubDarken([IIIIIII)I
.end method

.method public static native rubDarkenPreview([IIIII[IIIII)I
.end method

.method public static native rubLighten([IIIIIII)I
.end method

.method public static native rubLightenPreview([IIIII[IIIII)I
.end method

.method public static native rubPixelize([IIIIIII)V
.end method

.method public static native rubPixelizePreview([III[IIIIIII)V
.end method

.method public static native runBeautyInPortrait([I[IIII)I
.end method

.method public static native runBeautyInPortraitPreview([III[IIII)I
.end method

.method public static native runBlurinPreview([I[B[IIII)V
.end method

.method public static native runCopyObject([I[BII[III)V
.end method

.method public static native runCopyPaste([I[I[B[IIIIILandroid/graphics/Rect;III)V
.end method

.method public static native runCrop([IIILandroid/graphics/Rect;)V
.end method

.method public static native runEraser([I[BIIIIII)I
.end method

.method public static native runFacebeauty([I[III)I
.end method

.method public static native runLightenInPortrait([I[IIII)I
.end method

.method public static native runLightenInPortraitPreview([III[IIII)I
.end method

.method public static native runMirror([III[IIIIII)I
.end method

.method public static native runOutfocusInPortrait([I[IIII)I
.end method

.method public static native runOutfocusInPortraitPreview([III[IIII)I
.end method

.method public static native runOutfocusInPortraitPreviewWithROI([III[IIII[II)I
.end method

.method public static synchronized native declared-synchronized runPerspective([I[III[F)V
.end method

.method public static synchronized native declared-synchronized runRotateFlip([IIIIII)V
.end method

.method public static native runRotateN([I[B[I[BIIIIILandroid/graphics/Rect;II)V
.end method

.method public static native runSphericity([I[IIIIIIILandroid/graphics/Rect;I)I
.end method

.method public static native runStraighten([I[IIIIF)V
.end method

.method public static runStraightenAngle([I[IIII)V
    .locals 14

    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    move/from16 v0, p3

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    :goto_0
    const/16 v2, 0xb4

    move/from16 v0, p4

    if-le v0, v2, :cond_0

    move/from16 v0, p4

    add-int/lit16 v0, v0, -0x168

    move/from16 p4, v0

    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    sub-double v8, v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v12, v2, v4

    double-to-float v7, v12

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runStraighten([I[IIIIF)V

    return-void

    :cond_1
    move/from16 v0, p2

    int-to-double v2, v0

    move/from16 v0, p3

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    goto :goto_0
.end method

.method public static runStraightenAngleOnMove([III[IIII)V
    .locals 28

    const/16 v2, 0xb4

    move/from16 v0, p6

    if-le v0, v2, :cond_0

    move/from16 v0, p6

    add-int/lit16 v0, v0, -0x168

    move/from16 p6, v0

    :cond_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v22, v2, v4

    move/from16 v0, p4

    move/from16 v1, p1

    if-le v0, v1, :cond_2

    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v18

    move/from16 v0, p2

    int-to-double v2, v0

    move/from16 v0, p1

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    move/from16 v0, p4

    int-to-double v2, v0

    move/from16 v0, p5

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    move/from16 v0, p5

    int-to-double v2, v0

    move/from16 v0, p4

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    :goto_0
    sub-double v14, v18, v22

    sub-double v16, v20, v22

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v26, v2, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v24, v2, v4

    cmpg-double v2, v24, v26

    if-gez v2, :cond_1

    move-wide/from16 v26, v24

    :cond_1
    move-wide/from16 v0, v26

    double-to-float v9, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runStraightenOnMove([III[IIIIF)V

    return-void

    :cond_2
    move/from16 v0, p2

    int-to-double v2, v0

    move/from16 v0, p1

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v18

    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    move/from16 v0, p5

    int-to-double v2, v0

    move/from16 v0, p4

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    move/from16 v0, p4

    int-to-double v2, v0

    move/from16 v0, p5

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    goto :goto_0
.end method

.method public static declared-synchronized runStraightenAngleOnUp([III[IIII)V
    .locals 17

    const-class v16, Lcom/sec/android/mimage/photoretouching/jni/Engine;

    monitor-enter v16

    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    move/from16 v0, p2

    int-to-double v2, v0

    move/from16 v0, p1

    int-to-double v4, v0

    div-double/2addr v2, v4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    :goto_0
    const/16 v2, 0xb4

    move/from16 v0, p6

    if-le v0, v2, :cond_0

    move/from16 v0, p6

    add-int/lit16 v0, v0, -0x168

    move/from16 p6, v0

    :cond_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    sub-double v10, v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v14, v2, v4

    double-to-float v9, v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->runStraightenOnUp([III[IIIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    return-void

    :cond_1
    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    div-double/2addr v2, v4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2
.end method

.method public static native runStraightenOnMove([III[IIIIF)V
.end method

.method public static native runStraightenOnUp([III[IIIIF)V
.end method

.method public static native runTwirl([I[IIIIIIILandroid/graphics/Rect;I)I
.end method

.method public static native setAutoAdjust(IIII)V
.end method

.method public static native setEraserStatus(I)V
.end method

.method public static native setFacebeauty(III)V
.end method

.method public static native setGrayInSplash([I[III)I
.end method

.method public static native setObjectRegion([BIILandroid/graphics/Rect;I)V
.end method

.method public static native stopEraser()I
.end method

.method public static native storeMask([BIILandroid/graphics/Rect;)I
.end method

.method public static native storeObject([IIILandroid/graphics/Rect;)I
.end method
