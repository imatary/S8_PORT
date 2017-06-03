.class public final enum Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "LOCATION"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "LONG"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHORT"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "LONG"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string/jumbo v1, "SHORT"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method


# virtual methods
.method public isFallbackTypeOf(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method
