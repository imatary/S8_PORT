.class public final enum Landroid/icu/util/StringTrieBuilder$Option;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/StringTrieBuilder$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum FAST:Landroid/icu/util/StringTrieBuilder$Option;

.field public static final enum SMALL:Landroid/icu/util/StringTrieBuilder$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    const-string/jumbo v1, "FAST"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    new-instance v0, Landroid/icu/util/StringTrieBuilder$Option;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/StringTrieBuilder$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/StringTrieBuilder$Option;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/StringTrieBuilder$Option;
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Option;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/StringTrieBuilder$Option;
    .locals 1

    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->$VALUES:[Landroid/icu/util/StringTrieBuilder$Option;

    return-object v0
.end method
