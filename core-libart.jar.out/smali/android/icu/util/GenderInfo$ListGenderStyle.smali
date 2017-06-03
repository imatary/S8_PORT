.class public final enum Landroid/icu/util/GenderInfo$ListGenderStyle;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListGenderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/GenderInfo$ListGenderStyle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

.field public static final enum MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static fromNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/GenderInfo$ListGenderStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string/jumbo v1, "NEUTRAL"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string/jumbo v1, "MIXED_NEUTRAL"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string/jumbo v1, "MALE_TAINTS"

    invoke-direct {v0, v1, v4}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    new-array v0, v5, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string/jumbo v1, "neutral"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string/jumbo v1, "maleTaints"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string/jumbo v1, "mixedNeutral"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown gender style name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    const-class v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method
