.class public final enum Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;
.super Ljava/lang/Enum;
.source "LibraryDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LibraryDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

.field public static final enum LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

.field public static final enum UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    const-string/jumbo v1, "LOCAL_SOURCE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    new-instance v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    const-string/jumbo v1, "UNION_SOURCE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    sget-object v1, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->$VALUES:[Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->$VALUES:[Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    return-object v0
.end method
