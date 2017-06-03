.class public final enum Landroid/icu/text/TimeZoneFormat$Style;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x100

    const/16 v4, 0x80

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_LONG"

    invoke-direct {v0, v1, v6, v7}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_SHORT"

    invoke-direct {v0, v1, v7, v8}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "SPECIFIC_LONG"

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "SPECIFIC_SHORT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v8, v2}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "LOCALIZED_GMT"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "LOCALIZED_GMT_SHORT"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_SHORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_SHORT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_FIXED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_FIXED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_FULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_FULL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_FIXED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FIXED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_FULL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FULL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v5}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ZONE_ID"

    const/16 v2, 0x11

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ZONE_ID_SHORT"

    const/16 v2, 0x12

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    const/16 v2, 0x13

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$Style;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1

    const-class v0, Landroid/icu/text/TimeZoneFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$Style;
    .locals 1

    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->$VALUES:[Landroid/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method
