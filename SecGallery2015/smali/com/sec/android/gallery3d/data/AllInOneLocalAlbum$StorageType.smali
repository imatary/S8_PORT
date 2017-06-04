.class public final enum Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;
.super Ljava/lang/Enum;
.source "AllInOneLocalAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

.field public static final enum ALL:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

.field public static final enum LOCAL_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

.field public static final enum SDCARD_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->ALL:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    new-instance v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    const-string/jumbo v1, "LOCAL_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->LOCAL_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    new-instance v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    const-string/jumbo v1, "SDCARD_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->SDCARD_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    sget-object v1, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->ALL:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->LOCAL_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->SDCARD_ONLY:Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->$VALUES:[Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->$VALUES:[Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/AllInOneLocalAlbum$StorageType;

    return-object v0
.end method
