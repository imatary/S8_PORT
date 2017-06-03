.class final enum Landroid/icu/text/CompactDecimalDataCache$UResFlags;
.super Ljava/lang/Enum;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UResFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/CompactDecimalDataCache$UResFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

.field public static final enum ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

.field public static final enum NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    const-string/jumbo v1, "NOT_ROOT"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    .locals 1

    const-class v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    .locals 1

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    return-object v0
.end method
