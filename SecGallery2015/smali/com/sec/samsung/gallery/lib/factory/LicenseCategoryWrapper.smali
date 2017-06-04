.class public Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;
.super Ljava/lang/Object;
.source "LicenseCategoryWrapper.java"


# static fields
.field public static final DRM2_ACCUMULATED:I

.field public static final DRM2_COUNT:I

.field public static final DRM2_DATETIME:I

.field public static final DRM2_INTERVAL:I

.field public static final DRM2_NOT_FOUND:I

.field public static final DRM2_TIMED_COUNT:I

.field public static final DRM2_UNLIMITED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_UNLIMITED:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_COUNT:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_DATETIME:I

    const/4 v0, 0x4

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_INTERVAL:I

    const/16 v0, 0x8

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_TIMED_COUNT:I

    const/16 v0, 0x10

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_ACCUMULATED:I

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_NOT_FOUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
