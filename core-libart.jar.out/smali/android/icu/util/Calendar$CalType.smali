.class final enum Landroid/icu/util/Calendar$CalType;
.super Ljava/lang/Enum;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/Calendar$CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Calendar$CalType;

.field public static final enum BUDDHIST:Landroid/icu/util/Calendar$CalType;

.field public static final enum CHINESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum COPTIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum DANGI:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

.field public static final enum GREGORIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum HEBREW:Landroid/icu/util/Calendar$CalType;

.field public static final enum INDIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

.field public static final enum ISO8601:Landroid/icu/util/Calendar$CalType;

.field public static final enum JAPANESE:Landroid/icu/util/Calendar$CalType;

.field public static final enum PERSIAN:Landroid/icu/util/Calendar$CalType;

.field public static final enum ROC:Landroid/icu/util/Calendar$CalType;

.field public static final enum UNKNOWN:Landroid/icu/util/Calendar$CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "GREGORIAN"

    const-string/jumbo v2, "gregorian"

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISO8601"

    const-string/jumbo v2, "iso8601"

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "BUDDHIST"

    const-string/jumbo v2, "buddhist"

    invoke-direct {v0, v1, v6, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "CHINESE"

    const-string/jumbo v2, "chinese"

    invoke-direct {v0, v1, v7, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "COPTIC"

    const-string/jumbo v2, "coptic"

    invoke-direct {v0, v1, v8, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "DANGI"

    const-string/jumbo v2, "dangi"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ETHIOPIC"

    const-string/jumbo v2, "ethiopic"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ETHIOPIC_AMETE_ALEM"

    const-string/jumbo v2, "ethiopic-amete-alem"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "HEBREW"

    const-string/jumbo v2, "hebrew"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "INDIAN"

    const-string/jumbo v2, "indian"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC"

    const-string/jumbo v2, "islamic"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_CIVIL"

    const-string/jumbo v2, "islamic-civil"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_RGSA"

    const-string/jumbo v2, "islamic-rgsa"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_TBLA"

    const-string/jumbo v2, "islamic-tbla"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_UMALQURA"

    const-string/jumbo v2, "islamic-umalqura"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "JAPANESE"

    const-string/jumbo v2, "japanese"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "PERSIAN"

    const-string/jumbo v2, "persian"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ROC"

    const-string/jumbo v2, "roc"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    new-instance v0, Landroid/icu/util/Calendar$CalType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/icu/util/Calendar$CalType;

    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Calendar$CalType;
    .locals 1

    const-class v0, Landroid/icu/util/Calendar$CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar$CalType;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/Calendar$CalType;
    .locals 1

    sget-object v0, Landroid/icu/util/Calendar$CalType;->$VALUES:[Landroid/icu/util/Calendar$CalType;

    return-object v0
.end method
