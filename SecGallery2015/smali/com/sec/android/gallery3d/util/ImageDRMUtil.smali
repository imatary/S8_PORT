.class public Lcom/sec/android/gallery3d/util/ImageDRMUtil;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;,
        Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;,
        Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISPLAY:I = 0x7

.field private static final ACTION_PLAY:I = 0x1

.field private static final DRM2_TYPE_CD:I

.field public static final DRM2_TYPE_FL:I

.field public static final DRM2_TYPE_SD:I

.field private static final DRM2_TYPE_SSD:I

.field private static final DRM2_TYPE_UNDEFINE:I

.field private static final LICENSE_CATEGORY:Ljava/lang/String; = "license_category"

.field private static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field private static final TYPE_POPUP_COUNT_REMAIN_1:I = 0x3

.field private static final TYPE_POPUP_COUNT_REMAIN_N:I = 0x4

.field private static final TYPE_POPUP_INVALID:I = 0x1

.field private static final TYPE_POPUP_MODE_SINGLE:I = 0x6

.field private static final TYPE_POPUP_NONE:I = 0x0

.field private static final TYPE_POPUP_RENDER_FIRST:I = 0x5

.field private static final TYPE_POPUP_UNLOCK:I = 0x2

.field private static final TYPE_POPUP_UNSUPPORT_FILETYPE:I = 0x7

.field private static mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mContext:Landroid/content/Context;

.field private final mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_UNDEFINE:I

    sput v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_UNDEFINE:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_FL:I

    sput v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_CD:I

    sput v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_CD:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_SD:I

    sput v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$DrmFileType;->DRM2_TYPE_SSD:I

    sput v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SSD:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ImageDRMUtil"

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method static synthetic access$200()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->requestRight(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getLicenseCategory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getRightType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAvailableUses(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDrmInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, p2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "image/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v6, 0x7

    invoke-virtual {v5, p2, v6}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    return-object v4

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getAvailableUses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getLicenseCategory(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getLicenseCategoryString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "license_available_time"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v2, "license_expiry_time"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    const-string/jumbo v2, "license_start_time"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DrmStoreWrapper$ConstraintsColumns;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string/jumbo v2, "remaining_repeat_count"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    const-string/jumbo v2, "max_repeat_count"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "application/vnd.oma.drm.content"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, ".avi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "video/mux/AVI"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ".mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "video/mux/MKV"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ".divx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "video/mux/DivX"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, ".pyv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, ".pya"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "video/x-ms-wmv"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "audio/x-ms-wma"

    goto :goto_0

    :cond_8
    const-string/jumbo v1, ".isma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v0, "audio/isma"

    goto :goto_0

    :cond_9
    const-string/jumbo v1, ".ismv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "video/ismv"

    goto :goto_0
.end method

.method private getLicenseCategory(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v4, 0x7

    invoke-virtual {v3, p1, v4}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "license_category"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_2

    sget v3, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_NOT_FOUND:I

    :goto_1
    return v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method private getLicenseCategoryString(I)Ljava/lang/String;
    .locals 7

    const v6, 0x7f0a00db

    const v5, 0x7f0a00cd

    const/4 v0, 0x0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_UNLIMITED:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0498

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_COUNT:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_DATETIME:I

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_INTERVAL:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_TIMED_COUNT:I

    if-ne p1, v1, :cond_5

    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_ACCUMULATED:I

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget v1, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_NOT_FOUND:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0145

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPopupString(I)Ljava/lang/String;
    .locals 7

    const v6, 0x7f0a02df

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "%s. %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0a049a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0a036e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f0a036f

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "%s %s"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0124

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "%s."

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getPopupType(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 13

    const/4 v6, 0x6

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "ImageDRMUtil"

    const-string/jumbo v12, "getPopupString - start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, ".ismv"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v6, v9

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDRMInfo()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v11, "ImageDRMUtil"

    const-string/jumbo v12, "DRM info is not exist - try again"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->access$000(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    :cond_3
    iget v11, v1, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v12, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    if-eq v11, v12, :cond_4

    iget v11, v1, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v12, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_CD:I

    if-ne v11, v12, :cond_6

    :cond_4
    if-eq v5, v10, :cond_5

    if-ne v5, v8, :cond_a

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    :cond_6
    iget v11, v1, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v12, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-eq v11, v12, :cond_7

    iget v11, v1, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v12, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SSD:I

    if-ne v11, v12, :cond_a

    :cond_7
    if-eq v5, v10, :cond_8

    if-ne v5, v8, :cond_a

    :cond_8
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFLDRMOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x7

    goto :goto_0

    :cond_9
    move v6, v8

    goto :goto_0

    :cond_a
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->access$100(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;)I

    move-result v11

    sget v12, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_COUNT:I

    if-ne v11, v12, :cond_f

    const/16 v11, 0x134

    invoke-direct {p0, v11, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const-string/jumbo v6, "ImageDRMUtil"

    const-string/jumbo v7, "invalid remain count : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    goto :goto_0

    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move v6, v7

    goto/16 :goto_0

    :cond_c
    if-ne v4, v7, :cond_d

    move v6, v10

    goto/16 :goto_0

    :cond_d
    if-ne v4, v8, :cond_e

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_e
    move v6, v9

    goto/16 :goto_0

    :cond_f
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->access$100(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;)I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/lib/factory/LicenseCategoryWrapper;->DRM2_INTERVAL:I

    if-ne v6, v7, :cond_11

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isFirstView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v6, 0x5

    goto/16 :goto_0

    :cond_10
    move v6, v9

    goto/16 :goto_0

    :cond_11
    move v6, v9

    goto/16 :goto_0
.end method

.method private getRightType(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "ImageDRMUtil"

    const-string/jumbo v3, "DRM file() - RightStatus(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFirstView(Ljava/lang/String;)Z
    .locals 3

    const/16 v2, 0x131

    invoke-direct {p0, v2, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x130

    invoke-direct {p0, v2, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestRight(Ljava/lang/String;)V
    .locals 8

    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v6, 0x3

    const-string/jumbo v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string/jumbo v6, "drm_path"

    invoke-virtual {v2, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string/jumbo v6, "URL"

    invoke-virtual {v3, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    if-nez v4, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0240

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "ImageDRMUtil"

    const-string/jumbo v7, "No suitable activity for launching license url"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDrmPopupListener(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;)V
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mListener:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DrmPopupListener;

    return-void
.end method

.method private showAskPopupDialog(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ImageDRMUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "popup type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v2, "ImageDRMUtil"

    const-string/jumbo v3, "no popup body!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;ILcom/sec/android/gallery3d/data/MediaItem;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$2;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$3;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$3;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showPopupDialog(Landroid/content/Context;I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "ImageDRMUtil"

    const-string/jumbo v3, "no popup body!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil$4;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$4;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    check-cast p1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$5;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public consume(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;

    invoke-direct {v1, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMConsume;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method public getBrokenImageRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;)V

    return-object v0
.end method

.method public getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 8

    const/16 v7, 0x133

    const/16 v6, 0x12c

    const/16 v3, 0x12b

    const/16 v1, 0x134

    sget v4, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmType(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v6, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v4, 0x135

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0214

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v1, :cond_0

    invoke-direct {p0, v3, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v3, v6, :cond_2

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eq v3, v7, :cond_1

    const/16 v4, 0x134

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v7, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p1, v3, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getDrmType(Ljava/lang/String;)I
    .locals 7

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_UNDEFINE:I

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/drm/DrmInfoRequest;

    sget v4, Lcom/sec/samsung/gallery/lib/factory/DrmInfoRequestWrapper;->TYPE_GET_DRM_FILE_INFO:I

    const-string/jumbo v5, "application/vnd.oma.drm.content"

    invoke-direct {v1, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string/jumbo v4, "drm_path"

    invoke-virtual {v1, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    sget v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_UNDEFINE:I

    if-eqz v0, :cond_2

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "ImageDRMUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DrmType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "ImageDRMUtil"

    const-string/jumbo v5, "DrmType is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "ImageDRMUtil"

    const-string/jumbo v5, "DrmInfo is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDrm(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseOMADrmSkip:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isValidRights(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public verifyRights(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ImageDRMUtil"

    const-string/jumbo v4, "start verifyRights for open popup."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getPopupType(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->showAskPopupDialog(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;)V

    move v1, v2

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->showPopupDialog(Landroid/content/Context;I)V

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public verifyRightsForSlideShow(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "ImageDRMUtil"

    const-string/jumbo v3, "start verifyRights for slideshow."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getPopupType(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
