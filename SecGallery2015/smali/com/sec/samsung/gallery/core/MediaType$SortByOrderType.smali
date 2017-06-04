.class public enum Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/core/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "SortByOrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

.field public static final enum ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

.field public static final enum DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType$1;

    const-string/jumbo v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType$2;

    const-string/jumbo v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->$VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/samsung/gallery/core/MediaType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->$VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    return-object v0
.end method
