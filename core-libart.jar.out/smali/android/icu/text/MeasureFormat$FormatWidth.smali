.class public final enum Landroid/icu/text/MeasureFormat$FormatWidth;
.super Ljava/lang/Enum;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MeasureFormat$FormatWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

.field private static final INDEX_COUNT:I = 0x3

.field public static final enum NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field private final currencyStyle:I

.field private final listFormatterStyle:Landroid/icu/text/ListFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    const-string/jumbo v1, "WIDE"

    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION:Landroid/icu/text/ListFormatter$Style;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    const-string/jumbo v1, "SHORT"

    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_SHORT:Landroid/icu/text/ListFormatter$Style;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    const-string/jumbo v1, "NARROW"

    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    invoke-direct {v0, v1, v6, v2, v4}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    const-string/jumbo v1, "NUMERIC"

    sget-object v2, Landroid/icu/text/ListFormatter$Style;->DURATION_NARROW:Landroid/icu/text/ListFormatter$Style;

    invoke-direct {v0, v1, v7, v2, v4}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Style;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    iput p4, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    const-class v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method


# virtual methods
.method getCurrencyStyle()I
    .locals 1

    iget v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyStyle:I

    return v0
.end method

.method getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listFormatterStyle:Landroid/icu/text/ListFormatter$Style;

    return-object v0
.end method
