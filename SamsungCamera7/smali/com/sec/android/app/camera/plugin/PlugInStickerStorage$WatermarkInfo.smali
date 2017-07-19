.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;
.super Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkInfo"
.end annotation


# instance fields
.field public final captureResourceId:I

.field public final previewResourceHeight:I

.field public final previewResourceId:I

.field public final previewResourceWidth:I

.field public final watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput p4, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceId:I

    iput p5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceWidth:I

    iput p6, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->previewResourceHeight:I

    iput p7, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->captureResourceId:I

    iput-object p8, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;->watermarkTextInfo:[Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;

    return-void
.end method
