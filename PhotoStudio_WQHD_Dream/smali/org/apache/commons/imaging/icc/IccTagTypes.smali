.class public final enum Lorg/apache/commons/imaging/icc/IccTagTypes;
.super Ljava/lang/Enum;
.source "IccTagTypes.java"

# interfaces
.implements Lorg/apache/commons/imaging/icc/IccTagType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/icc/IccTagTypes;",
        ">;",
        "Lorg/apache/commons/imaging/icc/IccTagType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I

.field public final typeDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v1, "A_TO_B0_TAG"

    const-string v3, "AToB0Tag"

    const-string v4, "lut8Type or lut16Type or lutAtoBType"

    const v5, 0x41324230

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "A_TO_B1_TAG"

    const-string v6, "AToB1Tag"

    const-string v7, "lut8Type or lut16Type or lutAtoBType"

    const v8, 0x41324231

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "A_TO_B2_TAG"

    const-string v6, "AToB2Tag"

    const-string v7, "lut8Type or lut16Type or lutAtoBType"

    const v8, 0x41324232

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "BLUE_MATRIX_COLUMN_TAG"

    const-string v6, "blueMatrixColumnTag"

    const-string v7, "XYZType"

    const v8, 0x6258595a

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "BLUE_TRC_TAG"

    const-string v6, "blueTRCTag"

    const-string v7, "curveType or parametricCurveType"

    const v8, 0x62545243

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "B_TO_A0_TAG"

    const/4 v5, 0x5

    const-string v6, "BToA0Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x42324130

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "B_TO_A1_TAG"

    const/4 v5, 0x6

    const-string v6, "BToA1Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x42324131

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "B_TO_A2_TAG"

    const/4 v5, 0x7

    const-string v6, "BToA2Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x42324132

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "CALIBRATION_DATE_TIME_TAG"

    const/16 v5, 0x8

    const-string v6, "calibrationDateTimeTag"

    const-string v7, "dateTimeType"

    const v8, 0x63616c74

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "CHAR_TARGET_TAG"

    const/16 v5, 0x9

    const-string v6, "charTargetTag"

    const-string v7, "textType"

    const v8, 0x74617267

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "CHROMATIC_ADAPTATION_TAG"

    const/16 v5, 0xa

    const-string v6, "chromaticAdaptationTag"

    const-string v7, "s15Fixed16ArrayType"

    const v8, 0x63686164

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "CHROMATICITY_TAG"

    const/16 v5, 0xb

    const-string v6, "chromaticityTag"

    const-string v7, "chromaticityType"

    const v8, 0x6368726d

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "COLORANT_ORDER_TAG"

    const/16 v5, 0xc

    const-string v6, "colorantOrderTag"

    const-string v7, "colorantOrderType"

    const v8, 0x636c726f

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "COLORANT_TABLE_TAG"

    const/16 v5, 0xd

    const-string v6, "colorantTableTag"

    const-string v7, "colorantTableType"

    const v8, 0x636c7274

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "COPYRIGHT_TAG"

    const/16 v5, 0xe

    const-string v6, "copyrightTag"

    const-string v7, "multiLocalizedUnicodeType"

    const v8, 0x63707274

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "DEVICE_MFG_DESC_TAG"

    const/16 v5, 0xf

    const-string v6, "deviceMfgDescTag"

    const-string v7, "multiLocalizedUnicodeType"

    const v8, 0x646d6e64

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "DEVICE_MODEL_DESC_TAG"

    const/16 v5, 0x10

    const-string v6, "deviceModelDescTag"

    const-string v7, "multiLocalizedUnicodeType"

    const v8, 0x646d6464

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "GAMUT_TAG"

    const/16 v5, 0x11

    const-string v6, "gamutTag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x67616d74

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "GRAY_TRC_TAG"

    const/16 v5, 0x12

    const-string v6, "grayTRCTag"

    const-string v7, "curveType or parametricCurveType"

    const v8, 0x6b545243

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "GREEN_MATRIX_COLUMN_TAG"

    const/16 v5, 0x13

    const-string v6, "greenMatrixColumnTag"

    const-string v7, "XYZType"

    const v8, 0x6758595a

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "GREEN_TRC_TAG"

    const/16 v5, 0x14

    const-string v6, "greenTRCTag"

    const-string v7, "curveType or parametricCurveType"

    const v8, 0x67545243

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "LUMINANCE_TAG"

    const/16 v5, 0x15

    const-string v6, "luminanceTag"

    const-string v7, "XYZType"

    const v8, 0x6c756d69

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "MEASUREMENT_TAG"

    const/16 v5, 0x16

    const-string v6, "measurementTag"

    const-string v7, "measurementType"

    const v8, 0x6d656173

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "MEDIA_BLACK_POINT_TAG"

    const/16 v5, 0x17

    const-string v6, "mediaBlackPointTag"

    const-string v7, "XYZType"

    const v8, 0x626b7074

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "MEDIA_WHITE_POINT_TAG"

    const/16 v5, 0x18

    const-string v6, "mediaWhitePointTag"

    const-string v7, "XYZType"

    const v8, 0x77747074

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "NAMED_COLOR_2_TAG"

    const/16 v5, 0x19

    const-string v6, "namedColor2Tag"

    const-string v7, "namedColor2Type"

    const v8, 0x6e636c32

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "OUTPUT_RESPONSE_TAG"

    const/16 v5, 0x1a

    const-string v6, "outputResponseTag"

    const-string v7, "responseCurveSet16Type"

    const v8, 0x72657370

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "PREVIEW_0_TAG"

    const/16 v5, 0x1b

    const-string v6, "preview0Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x70726530    # 3.000708E29f

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "PREVIEW_1_TAG"

    const/16 v5, 0x1c

    const-string v6, "preview1Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x70726531    # 3.0007082E29f

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "PREVIEW_2_TAG"

    const/16 v5, 0x1d

    const-string v6, "preview2Tag"

    const-string v7, "lut8Type or lut16Type or lutBtoAType"

    const v8, 0x70726532    # 3.0007084E29f

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "PROFILE_DESCRIPTION_TAG"

    const/16 v5, 0x1e

    const-string v6, "profileDescriptionTag"

    const-string v7, "multiLocalizedUnicodeType"

    const v8, 0x64657363

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "PROFILE_SEQUENCE_DESC_TAG"

    const/16 v5, 0x1f

    const-string v6, "profileSequenceDescTag"

    const-string v7, "profileSequenceDescType"

    const v8, 0x70736571

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "RED_MATRIX_COLUMN_TAG"

    const/16 v5, 0x20

    const-string v6, "redMatrixColumnTag"

    const-string v7, "XYZType"

    const v8, 0x7258595a

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "RED_TRC_TAG"

    const/16 v5, 0x21

    const-string v6, "redTRCTag"

    const-string v7, "curveType or parametricCurveType"

    const v8, 0x72545243

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "TECHNOLOGY_TAG"

    const/16 v5, 0x22

    const-string v6, "technologyTag"

    const-string v7, "signatureType"

    const v8, 0x74656368

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "VIEWING_COND_DESC_TAG"

    const/16 v5, 0x23

    const-string v6, "viewingCondDescTag"

    const-string v7, "multiLocalizedUnicodeType"

    const v8, 0x76756564

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    new-instance v3, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v4, "VIEWING_CONDITIONS_TAG"

    const/16 v5, 0x24

    const-string v6, "viewingConditionsTag"

    const-string v7, "viewingConditionsType"

    const v8, 0x76696577

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v0, 0x25

    new-array v0, v0, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    iput p5, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/icc/IccTagTypes;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/icc/IccTagTypes;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/icc/IccTagTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    return-object v0
.end method
