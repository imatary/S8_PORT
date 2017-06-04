.class public final enum Lcom/sec/samsung/gallery/core/ViewByFilterType;
.super Ljava/lang/Enum;
.source "ViewByFilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/ViewByFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/ViewByFilterType;

.field public static final enum ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

.field public static final enum CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

.field public static final enum LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

.field public static final enum SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

.field public static final VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5, v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const-string/jumbo v1, "LOCAL"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/samsung/gallery/core/ViewByFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const-string/jumbo v1, "CLOUD"

    invoke-direct {v0, v1, v4, v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const-string/jumbo v1, "SCLOUD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    new-array v0, v7, [Lcom/sec/samsung/gallery/core/ViewByFilterType;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->$VALUES:[Lcom/sec/samsung/gallery/core/ViewByFilterType;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget v1, v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->SCLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget v1, v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->VIEW_BY_FILTER_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iget v1, v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/ViewByFilterType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/ViewByFilterType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->$VALUES:[Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/ViewByFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/ViewByFilterType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    return v0
.end method

.method public isOptionSelected(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->mIndex:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
