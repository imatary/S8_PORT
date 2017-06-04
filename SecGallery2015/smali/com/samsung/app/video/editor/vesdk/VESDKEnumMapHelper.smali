.class public Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;
.super Ljava/lang/Object;
.source "VESDKEnumMapHelper.java"


# static fields
.field private static final sAnimationInterpolationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/AnimationInterpolations;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimationTypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/AnimationTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAppNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/AppName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClipVideoAspectRatioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClipVideoCollageTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/ClipVideoCollageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEditSubTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/EditSubType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEditTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/EditType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEffectSubTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/EffectSubType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sElementTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/ElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOrientationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreviewFrameTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRecordingModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/RecordingMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpeedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/Speed;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThumbnailTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/ThumbnailType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationInterpolationMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->values()[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_0
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    aget-object v15, v16, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationInterpolationMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    :cond_0
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationTypesMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/AnimationTypes;->values()[Lcom/samsung/app/video/editor/external/AnimationTypes;

    move-result-object v4

    array-length v0, v4

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_1
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    aget-object v3, v4, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationTypesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/AnimationTypes;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    :cond_1
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAppNameMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/AppName;->values()[Lcom/samsung/app/video/editor/external/AppName;

    move-result-object v5

    array-length v0, v5

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_2
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    aget-object v17, v5, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAppNameMap:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/app/video/editor/external/AppName;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    :cond_2
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sClipVideoAspectRatioMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->values()[Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    move-result-object v6

    array-length v0, v6

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_3
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    aget-object v22, v6, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sClipVideoAspectRatioMap:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    :cond_3
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sClipVideoCollageTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/ClipVideoCollageType;->values()[Lcom/samsung/app/video/editor/external/ClipVideoCollageType;

    move-result-object v8

    array-length v0, v8

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_4
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    aget-object v7, v8, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sClipVideoCollageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/ClipVideoCollageType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    :cond_4
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEditSubTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/EditSubType;->values()[Lcom/samsung/app/video/editor/external/EditSubType;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_5

    aget-object v27, v28, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEditSubTypeMap:Ljava/util/HashMap;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/app/video/editor/external/EditSubType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    :cond_5
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEditTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/EditType;->values()[Lcom/samsung/app/video/editor/external/EditType;

    move-result-object v10

    array-length v0, v10

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    aget-object v9, v10, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEditTypeMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/EditType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    :cond_6
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEffectSubTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/EffectSubType;->values()[Lcom/samsung/app/video/editor/external/EffectSubType;

    move-result-object v12

    array-length v0, v12

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_7
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-object v11, v12, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEffectSubTypeMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/EffectSubType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    :cond_7
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sElementTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/ElementType;->values()[Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v14

    array-length v0, v14

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_8
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    aget-object v13, v14, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sElementTypeMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/samsung/app/video/editor/external/ElementType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    :cond_8
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sOrientationMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/Orientation;->values()[Lcom/samsung/app/video/editor/external/Orientation;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_9
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v18, v19, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sOrientationMap:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/app/video/editor/external/Orientation;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_9

    :cond_9
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sPreviewFrameTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/PreviewFrameType;->values()[Lcom/samsung/app/video/editor/external/PreviewFrameType;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_a
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    aget-object v20, v21, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sPreviewFrameTypeMap:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/app/video/editor/external/PreviewFrameType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    :cond_a
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sRecordingModeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/RecordingMode;->values()[Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_b
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    aget-object v23, v24, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sRecordingModeMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/app/video/editor/external/RecordingMode;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_b

    :cond_b
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sSpeedMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/Speed;->values()[Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_c
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    aget-object v25, v26, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sSpeedMap:Ljava/util/HashMap;

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/app/video/editor/external/Speed;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    :cond_c
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    sput-object v31, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sThumbnailTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/app/video/editor/external/ThumbnailType;->values()[Lcom/samsung/app/video/editor/external/ThumbnailType;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_d
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    aget-object v29, v30, v31

    sget-object v33, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sThumbnailTypeMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/app/video/editor/external/ThumbnailType;->getValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method

.method public static mapIntToAnimationInterpolations(I)Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationInterpolationMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    goto :goto_0
.end method

.method public static mapIntToAnimationTypes(I)Lcom/samsung/app/video/editor/external/AnimationTypes;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sAnimationTypesMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/AnimationTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/app/video/editor/external/AnimationTypes;->NONE:Lcom/samsung/app/video/editor/external/AnimationTypes;

    goto :goto_0
.end method

.method public static mapIntToEditSubType(I)Lcom/samsung/app/video/editor/external/EditSubType;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEditSubTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/EditSubType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->NONE:Lcom/samsung/app/video/editor/external/EditSubType;

    goto :goto_0
.end method

.method public static mapIntToEffectSubType(I)Lcom/samsung/app/video/editor/external/EffectSubType;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sEffectSubTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/EffectSubType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    goto :goto_0
.end method

.method public static mapIntToElementType(I)Lcom/samsung/app/video/editor/external/ElementType;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VESDKEnumMapHelper;->sElementTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/ElementType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    goto :goto_0
.end method
