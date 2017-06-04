.class public abstract enum Lcom/sec/samsung/gallery/core/MediaType$SortByType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Lcom/sec/samsung/gallery/core/MediaType$SortByOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/core/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SortByType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/MediaType$SortByType;",
        ">;",
        "Lcom/sec/samsung/gallery/core/MediaType$SortByOrder;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByType;

.field public static final enum SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

.field public static final enum SORTBY_ID:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

.field public static final enum SORTBY_MODIFIEDTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

.field public static final enum SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType$1;

    const-string/jumbo v1, "SORTBY_ID"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/core/MediaType$SortByType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_ID:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType$2;

    const-string/jumbo v1, "SORTBY_CREATIONTIME"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/core/MediaType$SortByType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType$3;

    const-string/jumbo v1, "SORTBY_MODIFIEDTIME"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/core/MediaType$SortByType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_MODIFIEDTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    new-instance v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType$4;

    const-string/jumbo v1, "SORTBY_NAME"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/core/MediaType$SortByType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_ID:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_MODIFIEDTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->$VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByType;

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

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/core/MediaType$SortByType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/MediaType$SortByType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->$VALUES:[Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/MediaType$SortByType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    return-object v0
.end method
