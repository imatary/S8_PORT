.class public final enum Lcom/sec/samsung/gallery/core/SearchFilterType;
.super Ljava/lang/Enum;
.source "SearchFilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/SearchFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

.field public static final enum USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;


# instance fields
.field private final mFilterName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "TIME"

    const-string/jumbo v2, "Time"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "EVENT"

    const-string/jumbo v2, "Event"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "LOCATION"

    const-string/jumbo v2, "Location"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "PEOPLE"

    const-string/jumbo v2, "People"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "USERTAG"

    const-string/jumbo v2, "UserTag"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "POI"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "Poi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    new-instance v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x6

    const/16 v3, 0x64

    const-string/jumbo v4, "None"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/core/SearchFilterType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/samsung/gallery/core/SearchFilterType;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->$VALUES:[Lcom/sec/samsung/gallery/core/SearchFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/samsung/gallery/core/SearchFilterType;->mValue:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/core/SearchFilterType;->mFilterName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/SearchFilterType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/SearchFilterType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/SearchFilterType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->$VALUES:[Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/SearchFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/SearchFilterType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/core/SearchFilterType;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/core/SearchFilterType;->mFilterName:Ljava/lang/String;

    return-object v0
.end method
