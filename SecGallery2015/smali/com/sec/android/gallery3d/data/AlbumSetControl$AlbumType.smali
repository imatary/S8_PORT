.class final enum Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;
.super Ljava/lang/Enum;
.source "AlbumSetControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/AlbumSetControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlbumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

.field public static final enum BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

.field public static final enum DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

.field public static final enum DEFAULT:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DEFAULT:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    new-instance v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    const-string/jumbo v1, "DCIM"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    new-instance v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    const-string/jumbo v1, "BASIC"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    sget-object v1, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DEFAULT:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->$VALUES:[Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->$VALUES:[Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    return-object v0
.end method
