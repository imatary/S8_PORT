.class public interface abstract Lcom/sec/android/gallery3d/data/VideoProperty;
.super Ljava/lang/Object;
.source "VideoProperty.java"


# static fields
.field public static final FEATURE_IS_TABLET:Z

.field public static final FEATURE_SUPPORT_RECORDING_MODE:Z

.field public static final FEATURE_USE_360_CONTENTS:Z

.field public static final IS_360_VIDEO:Ljava/lang/String; = "is_360_video"

.field public static final IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field public static final RECORD_MODE_CLIPSTUDIO:I = 0x3

.field public static final RECORD_MODE_FAST:I = 0x2

.field public static final RECORD_MODE_FLIP:I = 0x4

.field public static final RECORD_MODE_HYPER:I = 0x5

.field public static final RECORD_MODE_SIGHT:I = 0x6

.field public static final RECORD_MODE_SLOW:I = 0x1

.field public static final VIDEO_VIEW_MODE:Ljava/lang/String; = "video_view_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/VideoProperty;->FEATURE_IS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsJ1xlteModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportRecordingMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/gallery3d/data/VideoProperty;->FEATURE_SUPPORT_RECORDING_MODE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/VideoProperty;->FEATURE_USE_360_CONTENTS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
