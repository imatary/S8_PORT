.class final enum Landroid/icu/impl/locale/KeyTypeData$SpecialType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SpecialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "CODEPOINTS"

    new-instance v2, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    invoke-direct {v2, v5}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;)V

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    const-string/jumbo v1, "REORDER_CODE"

    new-instance v2, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    invoke-direct {v2, v5}, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;)V

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    const-class v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method
