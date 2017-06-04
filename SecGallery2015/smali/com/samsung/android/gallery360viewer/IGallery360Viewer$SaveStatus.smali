.class public final enum Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
.super Ljava/lang/Enum;
.source "IGallery360Viewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/IGallery360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

.field public static final enum INVALID_FILE_NAME:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

.field public static final enum SCREEN_CAPTURE_FAIL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

.field public static final enum SCREEN_CAPTURE_PROGRESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

.field public static final enum SCREEN_CAPTURE_SUCCESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    const-string/jumbo v1, "SCREEN_CAPTURE_FAIL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_FAIL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    const-string/jumbo v1, "SCREEN_CAPTURE_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_SUCCESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    const-string/jumbo v1, "SCREEN_CAPTURE_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_PROGRESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    new-instance v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    const-string/jumbo v1, "INVALID_FILE_NAME"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->INVALID_FILE_NAME:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_FAIL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_SUCCESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_PROGRESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->INVALID_FILE_NAME:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->$VALUES:[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    return-object v0
.end method
