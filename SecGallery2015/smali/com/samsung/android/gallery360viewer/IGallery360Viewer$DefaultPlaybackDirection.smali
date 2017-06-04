.class public final enum Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;
.super Ljava/lang/Enum;
.source "IGallery360Viewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultPlaybackDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

.field public static final enum FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

.field public static final enum REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    const-string/jumbo v1, "REAR"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    const-string/jumbo v1, "FRONT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;
    .locals 1

    const-class v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;
    .locals 1

    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    invoke-virtual {v0}, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    return-object v0
.end method
