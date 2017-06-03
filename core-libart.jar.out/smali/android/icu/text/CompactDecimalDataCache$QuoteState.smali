.class final enum Landroid/icu/text/CompactDecimalDataCache$QuoteState;
.super Ljava/lang/Enum;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QuoteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/CompactDecimalDataCache$QuoteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/CompactDecimalDataCache$QuoteState;

.field public static final enum INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

.field public static final enum INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

.field public static final enum OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    const-string/jumbo v1, "OUTSIDE"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    const-string/jumbo v1, "INSIDE_EMPTY"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    const-string/jumbo v1, "INSIDE_FULL"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$QuoteState;
    .locals 1

    const-class v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/CompactDecimalDataCache$QuoteState;
    .locals 1

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    return-object v0
.end method
