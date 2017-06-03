.class final enum Landroid/icu/impl/coll/FCDIterCollationIterator$State;
.super Ljava/lang/Enum;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/FCDIterCollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/coll/FCDIterCollationIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

.field public static final enum ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string/jumbo v1, "ITER_CHECK_FWD"

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string/jumbo v1, "ITER_CHECK_BWD"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string/jumbo v1, "ITER_IN_FCD_SEGMENT"

    invoke-direct {v0, v1, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string/jumbo v1, "IN_NORM_ITER_AT_LIMIT"

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const-string/jumbo v1, "IN_NORM_ITER_AT_START"

    invoke-direct {v0, v1, v6}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1

    const-class v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    .locals 1

    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->$VALUES:[Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-object v0
.end method
