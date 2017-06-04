.class public final enum Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;
.super Ljava/lang/Enum;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

.field public static final enum WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

.field public static final enum WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    const-string/jumbo v1, "WITH_ATTRIBUTES"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    new-instance v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    const-string/jumbo v1, "WITHOUT_ATTRIBUTES"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    sget-object v1, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->$VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;
    .locals 1

    const-class v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->$VALUES:[Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-virtual {v0}, [Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    return-object v0
.end method
