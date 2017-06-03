.class final Landroid/icu/text/MeasureFormat$MeasureFormatData;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeasureFormatData"
.end annotation


# static fields
.field static final PATTERN_COUNT:I

.field static final PER_UNIT_INDEX:I


# instance fields
.field final styleToPerPattern:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final unitToStyleToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sput v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    sget v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>()V

    return-void
.end method


# virtual methods
.method hasPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
