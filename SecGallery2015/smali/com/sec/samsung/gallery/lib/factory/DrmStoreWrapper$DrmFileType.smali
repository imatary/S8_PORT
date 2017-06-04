.class public Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;
.super Ljava/lang/Object;
.source "DrmStoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmFileType"
.end annotation


# static fields
.field public static final DRM2_TYPE_CD:I

.field public static final DRM2_TYPE_FL:I

.field public static final DRM2_TYPE_SD:I

.field public static final DRM2_TYPE_SSD:I

.field public static final DRM2_TYPE_UNDEFINE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_CD:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_FL:I

    const/4 v0, 0x3

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_SD:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_SSD:I

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_UNDEFINE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
