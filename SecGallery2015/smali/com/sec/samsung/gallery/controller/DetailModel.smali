.class public Lcom/sec/samsung/gallery/controller/DetailModel;
.super Ljava/lang/Object;
.source "DetailModel.java"


# static fields
.field private static final EXPOSURE_TIME_SECONDS_SUFFIX:Ljava/lang/String; = " s"

.field private static final FEATURE_USE_VISUAL_MOREINFO:Z

.field private static final GB:I = 0x40000000

.field private static final KB:J = 0x400L

.field private static final MB:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "DetailModel"


# instance fields
.field private final contentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

.field private mIgnoreList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaDetails;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    return-void
.end method

.method private getDetailValue(ILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, p1, p2, v0}, Lcom/sec/samsung/gallery/controller/DetailModel;->getDetailValue(Landroid/content/Context;ILjava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mAddressResolver:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDetailValue(Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/controller/DetailModel;->getDetailValue(Landroid/content/Context;ILjava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDetailValue(Landroid/content/Context;ILjava/lang/Object;Z)Ljava/lang/String;
    .locals 34

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const/16 v21, 0x0

    sparse-switch p1, :sswitch_data_0

    if-nez p2, :cond_20

    const/16 v21, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return-object v21

    :sswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v26, "ar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string/jumbo v26, "fa"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string/jumbo v26, "ur"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string/jumbo v26, "iw"

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u200f\u200e"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_1
    const-string/jumbo v26, "DetailModel"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "value "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    :sswitch_2
    const/16 v21, 0x0

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v26, "ar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "ar-rIL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "fa"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "ur"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    :cond_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0xb0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "%d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0xb0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v26, "ar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string/jumbo v26, "ar-rIL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string/jumbo v26, "fa"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string/jumbo v26, "ur"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    :cond_5
    const-string/jumbo v26, "%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v26, "%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_5
    const/4 v14, 0x0

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_7
    const/4 v5, 0x0

    if-eqz v14, :cond_8

    const/16 v26, 0x2f

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    add-int/lit8 v26, v20, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    add-int/lit8 v26, v20, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :cond_8
    :goto_2
    if-nez v5, :cond_a

    const v26, 0x7f0a0496

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_3
    goto/16 :goto_0

    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    move-object/from16 v21, v5

    goto :goto_3

    :sswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v18

    const-string/jumbo v26, "ar"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string/jumbo v26, "ar-rIL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string/jumbo v26, "fa"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string/jumbo v26, "ur"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string/jumbo v26, "ko"

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    :cond_b
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a01e5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x41d0000000000000L    # 1.073741824E9

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_c
    const-wide/high16 v26, 0x4130000000000000L    # 1048576.0

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_d

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a0257

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x4130000000000000L    # 1048576.0

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v26, 0x4090000000000000L    # 1024.0

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a0238

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%d"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a006e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_f
    const-wide/high16 v26, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_10

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a01e5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x41d0000000000000L    # 1.073741824E9

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_10
    const-wide/high16 v26, 0x4130000000000000L    # 1048576.0

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_11

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a0257

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x4130000000000000L    # 1048576.0

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_11
    const-wide/high16 v26, 0x4090000000000000L    # 1024.0

    cmpl-double v26, v18, v26

    if-ltz v26, :cond_12

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%.2f "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a0238

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-wide/high16 v30, 0x4090000000000000L    # 1024.0

    div-double v30, v18, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_12
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "%d "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0x7f0a006e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v26, "1"

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    const v26, 0x7f0a024a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_4
    goto/16 :goto_0

    :cond_13
    const v26, 0x7f0a0057

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_4

    :sswitch_8
    move-object/from16 v7, p2

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v26

    if-eqz v26, :cond_15

    if-eqz p3, :cond_14

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->isFlashPresent()Z

    move-result v26

    if-eqz v26, :cond_14

    const v26, 0x7f0a02f5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_14
    const v26, 0x7f0a01bb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_15
    if-eqz p3, :cond_16

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaDetails$FlashState;->isFlashPresent()Z

    move-result v26

    if-eqz v26, :cond_16

    const v26, 0x7f0a02f3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_16
    const v26, 0x7f0a01ba

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    if-nez p3, :cond_0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "F"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "%.1f"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v26, "DetailModel"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Exposure value "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v26, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_19

    const-string/jumbo v26, "/"

    const/16 v27, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    const/16 v26, 0x0

    aget-object v26, v15, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    const/16 v28, 0x1

    aget-object v28, v15, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    div-double v22, v26, v28

    :goto_5
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v22, v26

    if-gez v26, :cond_1f

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    div-double v28, v28, v22

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3b

    cmp-long v26, v24, v26

    if-nez v26, :cond_1a

    const-wide/16 v24, 0x3c

    :cond_17
    :goto_6
    const-string/jumbo v26, "%d/%d"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    :cond_18
    :goto_7
    sget-boolean v26, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " s"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_19
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    goto :goto_5

    :cond_1a
    const-wide/16 v26, 0x5b

    cmp-long v26, v24, v26

    if-nez v26, :cond_1b

    const-wide/16 v24, 0x5a

    goto :goto_6

    :cond_1b
    const-wide/16 v26, 0xb3

    cmp-long v26, v24, v26

    if-nez v26, :cond_1c

    const-wide/16 v24, 0xb4

    goto :goto_6

    :cond_1c
    const-wide/16 v26, 0x159

    cmp-long v26, v24, v26

    if-nez v26, :cond_1d

    const-wide/16 v24, 0x15e

    goto :goto_6

    :cond_1d
    const-wide/16 v26, 0x301

    cmp-long v26, v24, v26

    if-nez v26, :cond_1e

    const-wide/16 v24, 0x2ee

    goto :goto_6

    :cond_1e
    const-wide/16 v26, 0x595

    cmp-long v26, v24, v26

    if-nez v26, :cond_17

    const-wide/16 v24, 0x5dc

    goto :goto_6

    :cond_1f
    move-wide/from16 v0, v22

    double-to-long v10, v0

    long-to-double v0, v10

    move-wide/from16 v26, v0

    sub-double v22, v22, v26

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\'\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide v26, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v26, v22, v26

    if-lez v26, :cond_18

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " %d/%d"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    div-double v32, v32, v22

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_7

    :sswitch_b
    const-string/jumbo v21, ""

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const-string/jumbo v26, "%.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const-string/jumbo v26, "%.2f "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_6
        0x10 -> :sswitch_3
        0x12 -> :sswitch_1
        0x65 -> :sswitch_d
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_4
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6d -> :sswitch_c
        0x12c -> :sswitch_b
    .end sparse-switch
.end method

.method private getName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const v3, 0x7f0a014a

    const v2, 0x7f0a0149

    const v1, 0x7f0a0148

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :sswitch_0
    return-object v0

    :sswitch_1
    const v0, 0x7f0a0455

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0a010e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0a00dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0a00dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0a0248

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0a031d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0a04e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0a01ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0a0316

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const v0, 0x7f0a014d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    const v0, 0x7f0a0118

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const v0, 0x7f0a0249

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const v0, 0x7f0a0261

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    const v0, 0x7f0a01b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_10
    const v0, 0x7f0a0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_11
    const v0, 0x7f0a01bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    const v0, 0x7f0a04e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f0a0192

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    const v0, 0x7f0a021f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    const v0, 0x7f0a0374

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    const v0, 0x7f0a0039

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v0, "[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0a0146

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    const v0, 0x7f0a04b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    const v0, 0x7f0a01c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    const v0, 0x7f0a0265

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_b
        0x4 -> :sswitch_3
        0x5 -> :sswitch_16
        0x9 -> :sswitch_5
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_c
        0xf -> :sswitch_15
        0x10 -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_4
        0x13 -> :sswitch_20
        0x64 -> :sswitch_d
        0x65 -> :sswitch_11
        0x66 -> :sswitch_10
        0x67 -> :sswitch_13
        0x68 -> :sswitch_14
        0x69 -> :sswitch_12
        0x6a -> :sswitch_f
        0x6b -> :sswitch_e
        0x12c -> :sswitch_17
        0x12d -> :sswitch_18
        0x12e -> :sswitch_19
        0x12f -> :sswitch_1e
        0x130 -> :sswitch_1b
        0x131 -> :sswitch_1a
        0x132 -> :sswitch_1d
        0x134 -> :sswitch_1c
        0x135 -> :sswitch_1f
        0x1f4 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public addIgnores([I)V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mIgnoreList:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mIgnoreList:Ljava/util/Set;

    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mIgnoreList:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toStringList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x6b

    const/16 v12, 0x64

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mIgnoreList:Ljava/util/Set;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mIgnoreList:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/sec/samsung/gallery/controller/DetailModel;->getDetailValue(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-ne v3, v13, :cond_6

    move-object v5, v6

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x12c

    if-ne v3, v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/sec/samsung/gallery/controller/DetailModel;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v8, :cond_4

    if-eq v3, v12, :cond_4

    if-ne v3, v13, :cond_5

    :cond_4
    sget-boolean v8, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-nez v8, :cond_0

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-ne v3, v12, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v4, v6

    goto :goto_1

    :cond_7
    const/16 v8, 0x6d

    if-eq v3, v8, :cond_3

    const/16 v8, 0x11

    if-ne v3, v8, :cond_8

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/sec/samsung/gallery/controller/DetailModel;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v8, 0x13

    if-ne v3, v8, :cond_9

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v10, "go_to_url"

    invoke-static {v8, v10, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/sec/samsung/gallery/controller/DetailModel;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->setURLPosition(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/sec/samsung/gallery/controller/DetailModel;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->hasUnit(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mDetails:Lcom/sec/android/gallery3d/data/MediaDetails;

    invoke-virtual {v10, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    sget-boolean v8, Lcom/sec/samsung/gallery/controller/DetailModel;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0a00de

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/DetailModel;->contentsList:Ljava/util/ArrayList;

    return-object v8
.end method
