.class final enum Lorg/apache/commons/imaging/formats/png/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/imaging/formats/png/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum AVERAGE:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum PAETH:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum SUB:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum UP:Lorg/apache/commons/imaging/formats/png/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "SUB"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->SUB:Lorg/apache/commons/imaging/formats/png/FilterType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->UP:Lorg/apache/commons/imaging/formats/png/FilterType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "AVERAGE"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->AVERAGE:Lorg/apache/commons/imaging/formats/png/FilterType;

    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "PAETH"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->PAETH:Lorg/apache/commons/imaging/formats/png/FilterType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/png/FilterType;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->SUB:Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->UP:Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->AVERAGE:Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->PAETH:Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/FilterType;
    .locals 1

    const-class v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/FilterType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/FilterType;

    return-object v0
.end method
