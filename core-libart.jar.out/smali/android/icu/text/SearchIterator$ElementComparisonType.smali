.class public final enum Landroid/icu/text/SearchIterator$ElementComparisonType;
.super Ljava/lang/Enum;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/SearchIterator$ElementComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field public static final enum STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string/jumbo v1, "STANDARD_ELEMENT_COMPARISON"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string/jumbo v1, "PATTERN_BASE_WEIGHT_IS_WILDCARD"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    new-instance v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-string/jumbo v1, "ANY_BASE_WEIGHT_IS_WILDCARD"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/SearchIterator$ElementComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->PATTERN_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    const-class v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    sget-object v0, Landroid/icu/text/SearchIterator$ElementComparisonType;->$VALUES:[Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method
