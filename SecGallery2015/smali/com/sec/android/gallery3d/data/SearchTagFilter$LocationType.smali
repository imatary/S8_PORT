.class public final enum Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;
.super Ljava/lang/Enum;
.source "SearchTagFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/SearchTagFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

.field public static final enum LANDMARK:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

.field public static final enum LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

.field public static final enum NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

.field public static final enum POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    new-instance v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    const-string/jumbo v1, "LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    new-instance v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    const-string/jumbo v1, "POI"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    new-instance v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    const-string/jumbo v1, "LANDMARK"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LANDMARK:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    sget-object v1, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LOCATION:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->POI:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->LANDMARK:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->$VALUES:[Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->$VALUES:[Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    return-object v0
.end method
