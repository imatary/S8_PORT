.class final enum Landroid/icu/util/StringTrieBuilder$State;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/StringTrieBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum ADDING:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

.field public static final enum BUILT:Landroid/icu/util/StringTrieBuilder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string/jumbo v1, "ADDING"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string/jumbo v1, "BUILDING_FAST"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string/jumbo v1, "BUILDING_SMALL"

    invoke-direct {v0, v1, v4}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$State;

    const-string/jumbo v1, "BUILT"

    invoke-direct {v0, v1, v5}, Landroid/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$State;
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$State;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/StringTrieBuilder$State;
    .locals 1

    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->$VALUES:[Landroid/icu/util/StringTrieBuilder$State;

    return-object v0
.end method
