.class final enum Landroid/icu/impl/Trie2$ValueWidth;
.super Ljava/lang/Enum;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/Trie2$ValueWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

.field public static final enum BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

.field public static final enum BITS_32:Landroid/icu/impl/Trie2$ValueWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/Trie2$ValueWidth;

    const-string/jumbo v1, "BITS_16"

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    new-instance v0, Landroid/icu/impl/Trie2$ValueWidth;

    const-string/jumbo v1, "BITS_32"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/Trie2$ValueWidth;

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/Trie2$ValueWidth;->$VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/Trie2$ValueWidth;
    .locals 1

    const-class v0, Landroid/icu/impl/Trie2$ValueWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$ValueWidth;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/Trie2$ValueWidth;
    .locals 1

    sget-object v0, Landroid/icu/impl/Trie2$ValueWidth;->$VALUES:[Landroid/icu/impl/Trie2$ValueWidth;

    return-object v0
.end method
