.class public final enum Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;
.super Ljava/lang/Enum;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConvertValueFromRotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

.field public static final enum NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

.field public static final enum YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    const-string/jumbo v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    sget-object v1, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->NO:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->$VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->$VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    return-object v0
.end method
