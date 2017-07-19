.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;
.super Ljava/lang/Object;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkTextInfo"
.end annotation


# static fields
.field public static final TEXT_FONT_HANS_REGULAR:I = 0x3

.field public static final TEXT_FONT_KAITI:I = 0x5

.field public static final TEXT_FONT_MIAO:I = 0x6

.field public static final TEXT_FONT_ROBOTO_BLACK:I = 0x1

.field public static final TEXT_FONT_ROBOTO_LIGHT:I = 0x2

.field public static final TEXT_FONT_ROBOTO_REGULAR:I = 0x0

.field public static final TEXT_FONT_SHAONV:I = 0x4

.field public static final TEXT_TYPE_CHN_DATE:I = 0x11

.field public static final TEXT_TYPE_CHN_TEMPERATURE:I = 0x13

.field public static final TEXT_TYPE_CHN_WEATHER_TEMPERATURE:I = 0x15

.field public static final TEXT_TYPE_CITY_NAME:I = 0x14

.field public static final TEXT_TYPE_CURRENT_DATE:I = 0x4

.field public static final TEXT_TYPE_CURRENT_DAY:I = 0x2

.field public static final TEXT_TYPE_CURRENT_DAY_AND_TIME:I = 0x3

.field public static final TEXT_TYPE_CURRENT_YEAR:I = 0x1

.field public static final TEXT_TYPE_DATE_FORMAT_01:I = 0x5

.field public static final TEXT_TYPE_DATE_FORMAT_02:I = 0x6

.field public static final TEXT_TYPE_DATE_FORMAT_03:I = 0x7

.field public static final TEXT_TYPE_DATE_FOR_FESTIVAL:I = 0x12

.field public static final TEXT_TYPE_DAY_OF_WEEK:I = 0xb

.field public static final TEXT_TYPE_GPS_INFO:I = 0xf

.field public static final TEXT_TYPE_HOLIDAY:I = 0x8

.field public static final TEXT_TYPE_LOCATION_STRING:I = 0xc

.field public static final TEXT_TYPE_LOCATION_STRING_01:I = 0xd

.field public static final TEXT_TYPE_LOCATION_STRING_02:I = 0xe

.field public static final TEXT_TYPE_LUNAR_YEAR:I = 0xa

.field public static final TEXT_TYPE_NONE:I = 0x0

.field public static final TEXT_TYPE_PM25:I = 0x10

.field public static final TEXT_TYPE_SOLAR_TERM:I = 0x9


# instance fields
.field public final defaultText:Ljava/lang/String;

.field public final fontSize:F

.field public final hAlign:I

.field public final isEditable:Z

.field public final isVertical:Z

.field public final textColor:I

.field public final textFont:I

.field public final textHeight:F

.field public final textLeft:F

.field public final textTop:F

.field public final textType:I

.field public final textWidth:F

.field public final vAlign:I


# direct methods
.method public constructor <init>(FFFFZZLjava/lang/String;IFIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textLeft:F

    iput p2, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textTop:F

    iput p3, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textWidth:F

    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textHeight:F

    iput-boolean p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->isEditable:Z

    iput-boolean p6, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->isVertical:Z

    iput-object p7, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->defaultText:Ljava/lang/String;

    iput p8, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textType:I

    iput p9, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->fontSize:F

    iput p10, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textFont:I

    iput p11, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->textColor:I

    iput p12, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->hAlign:I

    iput p13, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;->vAlign:I

    return-void
.end method
