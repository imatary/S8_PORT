.class public final enum Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;
.super Ljava/lang/Enum;
.source "IGallery360Viewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field public static final enum DUAL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field public static final enum LITTLE_PLANET:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field public static final enum MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field public static final enum PANORAMA:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

.field public static final enum SPREAD:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "MIRROR_BALL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "LITTLE_PLANET"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->LITTLE_PLANET:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "SPREAD"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->SPREAD:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "DUAL"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->DUAL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const-string/jumbo v1, "PANORAMA"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->PANORAMA:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->LITTLE_PLANET:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->SPREAD:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->DUAL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->PANORAMA:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;
    .locals 1

    const-class v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v0}, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    return-object v0
.end method
