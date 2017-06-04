.class public Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;
.super Ljava/lang/Object;
.source "DrmInfoRequestWrapper.java"


# static fields
.field public static final DRM_PATH:Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String;

.field public static final SUCCESS:Ljava/lang/String;

.field public static final TYPE_GET_DECRYPT_IMAGE:I

.field public static final TYPE_GET_DRM_FILE_INFO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "status"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->STATUS:Ljava/lang/String;

    const-string/jumbo v0, "success"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->SUCCESS:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->TYPE_GET_DECRYPT_IMAGE:I

    const/16 v0, 0xe

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->TYPE_GET_DRM_FILE_INFO:I

    const-string/jumbo v0, "drm_path"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->DRM_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
